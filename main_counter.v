module main_counter(resetn, clk, micro100);
input clk,resetn;
output wire micro100;

reg [13:0] counter;

assign micro100 = ~(|counter);

always@(posedge clk)
begin
    if(resetn | micro100)
      counter <= 14'd2500;
    else
      counter <= counter-2'b01;
end

endmodule
