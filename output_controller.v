module output_controller(spikes_in, acks_out, addr_out, spike_out);
input [7:0] spikes_in;
output reg [7:0] acks_out;
output reg [2:0] addr_out;
output spike_out;

assign spike_out = |spikes_in;

always@(*) begin
    casex (spikes_in)
      8'bxxxx_xxx1 : begin
          addr_out = 0;
          acks_out = 8'h01;
          end
      8'bxxxx_xx10 : begin
          addr_out = 1;
          acks_out = 8'h02;
          end
      8'bxxxx_x100 : begin
          addr_out = 2;
          acks_out = 8'h04;
          end
      8'bxxxx_1000 : begin
          addr_out = 3;
          acks_out = 8'h08;
          end
      8'bxxx1_0000 : begin
          addr_out = 4;
          acks_out = 8'h10;
          end
      8'bxx10_0000 : begin
          addr_out = 5;
          acks_out = 8'h20;
          end
      8'bx100_0000 : begin
          addr_out = 6;
          acks_out = 8'h40;
          end
      8'b1000_0000 : begin
          addr_out = 7;
          acks_out = 8'h80;
          end
      default : begin
          addr_out = 0;
          acks_out = 8'h00;
          end
    endcase
end

endmodule
