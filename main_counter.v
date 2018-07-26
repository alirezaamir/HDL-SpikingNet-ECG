module main_counter(resetn, clk, micro100);
input clk,resetn;
output wire micro100;

reg [10:0] counter;

assign micro100 = ~(|counter);

always@(posedge clk)
begin
    if(resetn | micro100)
      counter <= 11'd2000;
    else
      counter <= counter-2'b01;
end

endmodule
