module input_neuron(period, clk, ack_in, spike, resetn, timer_en);
input [9:0] period;
input clk, resetn;
input ack_in;
input timer_en;
output reg spike;

reg[9:0] counter;
wire timer_out;

assign timer_out = ~(|counter);

always@(posedge clk)
begin
    if(resetn | timer_out)
      counter <= period;
    else begin
      if(timer_en)
        counter <= counter-2'b01;
      else
        counter <= counter;
    end
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
