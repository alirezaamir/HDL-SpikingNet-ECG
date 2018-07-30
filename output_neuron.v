module output_neuron(spike_in, clk, resetn, spike_out, addr_in);
parameter data_bit = 7;

input spike_in;
input clk, resetn;
output spike_out;
input [2:0] addr_in;

wire [2:0] ROM_address;
assign ROM_address = addr_in;

wire enable;

wire [data_bit:0] ROM_out;

IF_neuron_out IF0 (.clk(clk), .resetn(resetn), .input_current(ROM_out), .spike(spike_out));
defparam IF0.n_bit = data_bit;

ROMFile_out ROM0 (.address(ROM_address), .data(ROM_out), .read_en(enable));
defparam ROM0.n_bit = data_bit;

assign enable = spike_in;

endmodule



module ROMFile_out( address , data , read_en);
parameter n_bit = 7;
input [2:0] address;
output [n_bit:0] data;
input read_en;
reg [n_bit:0] mem [0:7] ;
assign data = read_en ? mem[address] : 0;

endmodule



module IF_neuron_out(clk, resetn, input_current, spike);
parameter n_bit = 7;
parameter theta = 10'b001110000;
parameter max_bit = 10;

input clk, resetn;
input [n_bit:0]input_current;
output spike;

wire [max_bit:0] add_out;
wire overflow;
reg [max_bit:0] membrane_potential;
wire threshold_enable;

assign {overflow,add_out} = resetn ? 0 : (membrane_potential + input_current);
assign spike = (membrane_potential > theta);

always@(posedge clk) begin
    if (resetn | spike) begin
      membrane_potential <= 0;
    end
    else
      membrane_potential <= add_out;
end

endmodule
