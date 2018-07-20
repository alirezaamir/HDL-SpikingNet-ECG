`timescale 1ns / 10ps
module input_neuron(period, clk, ack_in, spike, resetn);
input [10:0] period;
input clk, resetn;
input ack_in;
output reg spike;

reg[10:0] counter;
wire timer_out;

assign timer_out = ~(|counter);

always@(posedge clk)
begin
    if(resetn | timer_out)
      counter <= period;
    else
      counter <= counter-2'b01;
end

always@(posedge clk)
begin
    spike <= spike;
    if(resetn)
      spike <= 0;
    else if(timer_out)
      spike <= 1;
    else if(ack_in)
      spike <= 0;
end

endmodule
