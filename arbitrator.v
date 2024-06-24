module arbitrator(spikes_in, class_out, no_spike, end_process, resetn, clk, timer_en);
parameter duration = 12;
input clk, resetn;
input [5:0] spikes_in;
input timer_en;
output wire no_spike;
output wire end_process;
output reg [1:0] class_out;

wire spike_enable;
reg [3:0] counter;

assign spike_enable = (|spikes_in);
assign no_spike = ~(|counter);
assign end_process = no_spike | spike_enable;

always@(*) begin
    casex (spikes_in)
      6'bxx_xxx1 : class_out = 2'b00;
      6'bxx_xx10 : class_out = 2'b01;
      6'bxx_x100 : class_out = 2'b10;
      6'bxx_1000 : class_out = 2'b00;
      6'bx1_0000 : class_out = 2'b01;
      6'b10_0000 : class_out = 2'b10;
      default : class_out = 2'b11;
    endcase
end

always@(posedge clk)
begin
    if(resetn)
      counter <= duration;
    else if(timer_en)
      counter <= counter-1;
    else
      counter <= counter;
end

endmodule
