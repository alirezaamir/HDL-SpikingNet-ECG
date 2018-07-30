module hidden_controler(clk , resetn, spikes_in, acks_out, addr_out, spike_out,
  addr_in00, addr_in01, addr_in02, addr_in03,
   addr_in04, addr_in05, addr_in06, addr_in07,
   addr_in08, addr_in09, addr_in10, addr_in11,
   addr_in12, addr_in13, addr_in14, addr_in15);
input clk, resetn;
input [15:0] spikes_in;
output reg [15:0] acks_out;
input [3:0] addr_in00, addr_in01, addr_in02, addr_in03,
   addr_in04, addr_in05, addr_in06, addr_in07,
   addr_in08, addr_in09, addr_in10, addr_in11,
   addr_in12, addr_in13, addr_in14, addr_in15;
output reg [7:0] addr_out;
output wire spike_out;

assign spike_out = |spikes_in;

always@(*) begin
    casex (spikes_in)
      16'bxxxx_xxxx_xxxx_xxx1 : begin
          addr_out = {4'd0,addr_in00};
          acks_out = 16'h0001;
          end
      16'bxxxx_xxxx_xxxx_xx10 : begin
          addr_out = {4'd1,addr_in01};
          acks_out = (16'h0002  );
          end
      16'bxxxx_xxxx_xxxx_x100 : begin
          addr_out = {4'd2,addr_in02};
          acks_out = (16'h0004  );
          end
      16'bxxxx_xxxx_xxxx_1000 : begin
          addr_out = {4'd3,addr_in03};
          acks_out = (16'h0008  );
          end
      16'bxxxx_xxxx_xxx1_0000 : begin
          addr_out = {4'd4,addr_in04};
          acks_out = (16'h0010  );
          end
      16'bxxxx_xxxx_xx10_0000 : begin
          addr_out = {4'd5,addr_in05};
          acks_out = (16'h0020  );
          end
      16'bxxxx_xxxx_x100_0000 : begin
          addr_out = {4'd6,addr_in06};
          acks_out = (16'h0040  );
          end
      16'bxxxx_xxxx_1000_0000 : begin
          addr_out = {4'd7,addr_in07};
          acks_out = (16'h0080  );
          end
      16'bxxxx_xxx1_0000_0000 : begin
          addr_out = {4'd8,addr_in08};
          acks_out = (16'h0100  );
          end
      16'bxxxx_xx10_0000_0000 : begin
          addr_out = {4'd9,addr_in09};
          acks_out = (16'h0200  );
          end
      16'bxxxx_x100_0000_0000 : begin
          addr_out = {4'd10,addr_in10};
          acks_out = (16'h0400  );
          end
      16'bxxxx_1000_0000_0000 : begin
          addr_out = {4'd11,addr_in11};
          acks_out = (16'h0800  );
          end
      16'bxxx1_0000_0000_0000 : begin
          addr_out = {4'd12,addr_in12};
          acks_out = (16'h1000  );
          end
      16'bxx10_0000_0000_0000 : begin
          addr_out = {4'd13,addr_in13};
          acks_out = (16'h2000  );
          end
      16'bx100_0000_0000_0000 : begin
          addr_out = {4'd14,addr_in14};
          acks_out = (16'h4000  );
          end
      16'b1000_0000_0000_0000 : begin
          addr_out = {4'd15,addr_in15};
          acks_out = (16'h8000  );
          end
      default : begin
          addr_out = 0;
          acks_out = (16'h0000  );
          end
    endcase
end

endmodule
