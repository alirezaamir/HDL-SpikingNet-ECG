module hidden_neuron(spike_in, clk, resetn, spike_out, ack_in, timer_en, addr_in);

parameter data_bit = 7;

input spike_in;
input ack_in;
input clk, resetn;
input timer_en;
output reg spike_out;
input [7:0] addr_in;

reg [7:0] ROM_address;
reg enable;

wire model_spike;
wire [data_bit:0] ROM_out;
reg [data_bit:0] IF_in;

IF_neuron_hidden IF0 (.clk(clk), .resetn(resetn), .input_current(IF_in),
                .spike(model_spike), .timer_en(timer_en));
defparam IF0.n_bit = 7;

ROMFile_hidden ROM0 (.address(ROM_address), .data(ROM_out), .read_en(enable));
defparam ROM0.n_bit = data_bit;

always@(posedge clk)
begin
    spike_out <= spike_out;
    if(resetn)
      spike_out <= 0;
    else if(model_spike)
      spike_out <= 1;
    else if(ack_in)
      spike_out <= 0;
end

always @ ( posedge clk ) begin
  ROM_address <= addr_in;
  enable <= spike_in;
  IF_in <= ROM_out;
end

endmodule



module ROMFile_hidden( address , data , read_en);
parameter n_bit = 7;
input [7:0] address;
output [n_bit:0] data;
input read_en;
reg [n_bit:0] mem [0:255] ;
assign data = read_en ? mem[address] : 0;

endmodule



module IF_neuron_hidden(clk, resetn, input_current, spike, timer_en);
parameter n_bit = 7;
parameter theta = 10'b0101000000;
parameter refractory = 0;
parameter max_bit = 10;

input clk, resetn;
input [n_bit:0]input_current;
input timer_en;
output spike;

wire [max_bit:0] add_out;
wire overflow;
reg [max_bit:0] membrane_potential;
wire threshold_enable;
reg [1:0] ref_counter;

assign {overflow,add_out} = (resetn | spike) ? 0 :
              (membrane_potential + input_current);
assign spike = threshold_enable ? (membrane_potential > theta) : 0 ;
assign threshold_enable = ~(|ref_counter);

always@(posedge clk)
begin
    if(resetn | spike)
      ref_counter <= refractory;
    else if(~(|ref_counter))
      ref_counter <= ref_counter;
    else if(timer_en)
      ref_counter <= ref_counter-1;
    else
      ref_counter <= ref_counter;
end

always@(posedge clk) begin
    if (resetn | spike) begin
      membrane_potential <= 0;
    end
    else
      membrane_potential <= add_out;
end

endmodule
