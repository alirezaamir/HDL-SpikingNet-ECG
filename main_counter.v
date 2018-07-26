module main_counter(resetn, clk, micro100);
input clk,resetn;
output wire micro100;

reg [12:0] counter;

assign micro100 = ~(|counter);

always@(posedge clk)
begin
    if(resetn | micro100)
      counter <= 13'd5000;
    else
      counter <= counter-2'b01;
end

endmodule
