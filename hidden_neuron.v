module hidden_neuron(spikes_in, acks_out, clk, resetn, spike_out, ack_in, timer_en,
   addr_in00, addr_in01, addr_in02, addr_in03,
   addr_in04, addr_in05, addr_in06, addr_in07,
   addr_in08, addr_in09, addr_in10, addr_in11,
   addr_in12, addr_in13, addr_in14, addr_in15);

parameter data_bit = 7;

input [15:0] spikes_in;
input ack_in;
input clk, resetn;
input timer_en;
output reg spike_out;
output reg [3:0] addr_in00, addr_in01, addr_in02, addr_in03,
   addr_in04, addr_in05, addr_in06, addr_in07,
   addr_in08, addr_in09, addr_in10, addr_in11,
   addr_in12, addr_in13, addr_in14, addr_in15;
output reg [15:0] acks_out;

reg [3:0] mux_addr;
reg [3:0] mux_out;
wire [7:0] ROM_address;
wire enable;

wire model_spike;
wire [data_bit:0] ROM_out;

IF_neuron_hidden IF0 (.clk(clk), .resetn(resetn), .input_current(ROM_out),
                .spike(model_spike), .timer_en(timer_en));
defparam IF0.n_bit = 7;

ROMFile_hidden ROM0 (.address(ROM_address), .data(ROM_out), .read_en(enable));
defparam ROM0.n_bit = data_bit;

assign ROM_address = {mux_addr, mux_out};
assign enable = (|spikes_in);


always@(spikes_in) begin
    casex (spikes_in)
      16'bxxxx_xxxx_xxxx_xxx1 : begin
          mux_addr = 0;
          acks_out = 16'h0001;
          end
      16'bxxxx_xxxx_xxxx_xx10 : begin
          mux_addr = 1;
          acks_out = (16'h0002  );
          end
      16'bxxxx_xxxx_xxxx_x100 : begin
          mux_addr = 2;
          acks_out = (16'h0004  );
          end
      16'bxxxx_xxxx_xxxx_1000 : begin
          mux_addr = 3;
          acks_out = (16'h0008  );
          end
      16'bxxxx_xxxx_xxx1_0000 : begin
          mux_addr = 4;
          acks_out = (16'h0010  );
          end
      16'bxxxx_xxxx_xx10_0000 : begin
          mux_addr = 5;
          acks_out = (16'h0020  );
          end
      16'bxxxx_xxxx_x100_0000 : begin
          mux_addr = 6;
          acks_out = (16'h0040  );
          end
      16'bxxxx_xxxx_1000_0000 : begin
          mux_addr = 7;
          acks_out = (16'h0080  );
          end
      16'bxxxx_xxx1_0000_0000 : begin
          mux_addr = 8;
          acks_out = (16'h0100  );
          end
      16'bxxxx_xx10_0000_0000 : begin
          mux_addr = 9;
          acks_out = (16'h0200  );
          end
      16'bxxxx_x100_0000_0000 : begin
          mux_addr = 10;
          acks_out = (16'h0400  );
          end
      16'bxxxx_1000_0000_0000 : begin
          mux_addr = 11;
          acks_out = (16'h0800  );
          end
      16'bxxx1_0000_0000_0000 : begin
          mux_addr = 12;
          acks_out = (16'h1000  );
          end
      16'bxx10_0000_0000_0000 : begin
          mux_addr = 13;
          acks_out = (16'h2000  );
          end
      16'bx100_0000_0000_0000 : begin
          mux_addr = 14;
          acks_out = (16'h4000  );
          end
      16'b1000_0000_0000_0000 : begin
          mux_addr = 15;
          acks_out = (16'h8000  );
          end
      default : begin
          mux_addr = 0;
          acks_out = (16'h0000  );
          end
    endcase
end

always@(*) begin
    case(mux_addr)
      4'd0 : mux_out = addr_in00;
      4'd1 : mux_out = addr_in01;
      4'd2 : mux_out = addr_in02;
      4'd3 : mux_out = addr_in03;
      4'd4 : mux_out = addr_in04;
      4'd5 : mux_out = addr_in05;
      4'd6 : mux_out = addr_in06;
      4'd7 : mux_out = addr_in07;
      4'd8 : mux_out = addr_in08;
      4'd9 : mux_out = addr_in09;
      4'd10 : mux_out = addr_in10;
      4'd11 : mux_out = addr_in11;
      4'd12 : mux_out = addr_in12;
      4'd13 : mux_out = addr_in13;
      4'd14 : mux_out = addr_in14;
      4'd15 : mux_out = addr_in15;

      default: mux_out = 4'd0;
    endcase
end

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
parameter theta = 10'h1FF;
parameter refractory = 10;
parameter max_bit = 10;

input clk, resetn;
input [n_bit:0]input_current;
input timer_en;
output spike;

wire [max_bit:0] add_out;
wire overflow;
reg [max_bit:0] membrane_potential;
wire threshold_enable;
reg [3:0] ref_counter;

assign {overflow,add_out} = (resetn | spike) ? 0 :
              (membrane_potential + input_current);
assign spike = threshold_enable ? (membrane_potential > theta) : 0 ;
assign threshold_enable = ~(|ref_counter);

always@(posedge clk)
begin
    if(resetn | spike)
      ref_counter <= refractory;
    else if(|ref_counter)
      ref_counter <= ref_counter;
    else if(timer_en)
      ref_counter <= ref_counter-1;
    else
      ref_counter <= ref_counter;
end

always@(posedge clk) begin
    membrane_potential <= add_out;
end

endmodule
