`timescale 1ns / 10ps
module handler_block(spikes_in, ack_in, spike_out, address, acks_out);
input [15:0] spikes_in;
input ack_in;
output wire spike_out;
output reg [3:0] address;
output reg [15:0] acks_out;

assign spike_out = (|spikes_in);

always@(spikes_in) begin
    casex (spikes_in)
      16'bxxxx_xxxx_xxxx_xxx1 : begin
          address = 0;
          acks_out = (16'h0001 & ack_in);
          end
      16'bxxxx_xxxx_xxxx_xx10 : begin
          address = 1;
          acks_out = (16'h0002 & ack_in);
          end
      16'bxxxx_xxxx_xxxx_x100 : begin
          address = 2;
          acks_out = (16'h0004 & ack_in);
          end
      16'bxxxx_xxxx_xxxx_1000 : begin
          address = 3;
          acks_out = (16'h0008 & ack_in);
          end
      16'bxxxx_xxxx_xxx1_0000 : begin
          address = 4;
          acks_out = (16'h0010 & ack_in);
          end
      16'bxxxx_xxxx_xx10_0000 : begin
          address = 5;
          acks_out = (16'h0020 & ack_in);
          end
      16'bxxxx_xxxx_x100_0000 : begin
          address = 6;
          acks_out = (16'h0040 & ack_in);
          end
      16'bxxxx_xxxx_1000_0000 : begin
          address = 7;
          acks_out = (16'h0080 & ack_in);
          end
      16'bxxxx_xxx1_0000_0000 : begin
          address = 8;
          acks_out = (16'h0100 & ack_in);
          end
      16'bxxxx_xx10_0000_0000 : begin
          address = 9;
          acks_out = (16'h0200 & ack_in);
          end
      16'bxxxx_x100_0000_0000 : begin
          address = 10;
          acks_out = (16'h0400 & ack_in);
          end
      16'bxxxx_1000_0000_0000 : begin
          address = 11;
          acks_out = (16'h0800 & ack_in);
          end
      16'bxxx1_0000_0000_0000 : begin
          address = 12;
          acks_out = (16'h1000 & ack_in);
          end
      16'bxx10_0000_0000_0000 : begin
          address = 13;
          acks_out = (16'h2000 & ack_in);
          end
      16'bx100_0000_0000_0000 : begin
          address = 14;
          acks_out = (16'h4000 & ack_in);
          end
      16'b1000_0000_0000_0000 : begin
          address = 15;
          acks_out = (16'h8000 & ack_in);
          end
      default : begin
          address = 0;
          acks_out = (16'h0000 & ack_in);
          end
    endcase
end



endmodule
