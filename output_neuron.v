`timescale 1ns / 10ps
module output_neuron(spikes_in, acks_out, clk, resetn, spike_out);
parameter data_bit = 7;

input [7:0] spikes_in;
input clk, resetn;
output reg spike_out;
output reg [7:0] acks_out;

reg [2:0] address;
wire [2:0] ROM_address;
wire enable;

wire model_spike;
wire [data_bit:0] ROM_out;

IF_neuron_out IF0 (.clk(clk), .resetn(resetn), .input_current(ROM_out), .spike(model_spike));
defparam IF0.n_bit = data_bit;

ROMFile_out ROM0 (.address(ROM_address), .data(ROM_out), .read_en(enable));
defparam ROM0.n_bit = data_bit;

assign ROM_address = address;
assign enable = (|spikes_in);


always@(spikes_in) begin
    casex (spikes_in)
      8'bxxxx_xxx1 : begin
          address = 0;
          acks_out = 8'h01;
          end
      8'bxxxx_xx10 : begin
          address = 1;
          acks_out = 8'h02;
          end
      8'bxxxx_x100 : begin
          address = 2;
          acks_out = 8'h04;
          end
      8'bxxxx_1000 : begin
          address = 3;
          acks_out = 8'h08;
          end
      8'bxxx1_0000 : begin
          address = 4;
          acks_out = 8'h10;
          end
      8'bxx10_0000 : begin
          address = 5;
          acks_out = 8'h20;
          end
      8'bx100_0000 : begin
          address = 6;
          acks_out = 8'h40;
          end
      8'b1000_0000 : begin
          address = 7;
          acks_out = 8'h80;
          end
      default : begin
          address = 0;
          acks_out = 8'h00;
          end
    endcase
end

endmodule



module ROMFile_out( address , data , read_en);
parameter n_bit = 7;
input [2:0] address;
output [n_bit:0] data;
input read_en;
reg [n_bit:0] mem [0:7] ;
assign data = read_en ? mem[address] : 0;

initial
begin
$readmemb("output_weights.list", mem);
end
endmodule



module IF_neuron_out(clk, resetn, input_current, spike);
parameter n_bit = 7;
parameter theta = 10'h1FF;
parameter refractory = 50000;
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
    membrane_potential <= add_out;
end

endmodule
