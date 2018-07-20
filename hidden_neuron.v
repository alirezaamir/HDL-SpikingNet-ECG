`timescale 1ns / 10ps
module hidden_neuron(spikes_in, acks_out, clk, resetn, spike_out, ack_in,
   address_in0, address_in1, address_in2, address_in3,
    address_in4, address_in5, address_in6, address_in7);
parameter data_bit = 7;

input [7:0] spikes_in;
input ack_in;
input clk, resetn;
output reg spike_out;
output reg [3:0] address_in0, address_in1, address_in2, address_in3, address_in4, address_in5,
                  address_in6, address_in7;
output reg [7:0] acks_out;

reg [2:0] address;
reg [3:0] mux_out;
wire [6:0] ROM_address;
wire enable;

wire model_spike;
wire [data_bit:0] ROM_out;

IF_neuron IF0 (.clk(clk), .resetn(resetn), .input_current(ROM_out), .spike(model_spike));
defparam IF0.n_bit = 7;

ROMFile ROM0 (.address(ROM_address), .data(ROM_out), .read_en(enable));
defparam ROM0.n_bit = data_bit;

assign ROM_address = {address, mux_out};
assign enable = (|spikes_in);


always@(spikes_in) begin
    casex (spikes_in)
      8'bxxxx_xxx1 : begin
          address = 0;
          acks_out = 8'h01;
          end
      8'bxxxx_xx10 : begin
          address = 1;
          acks_out = 8'h02;
          end
      8'bxxxx_x100 : begin
          address = 2;
          acks_out = 8'h04;
          end
      8'bxxxx_1000 : begin
          address = 3;
          acks_out = 8'h08;
          end
      8'bxxx1_0000 : begin
          address = 4;
          acks_out = 8'h10;
          end
      8'bxx10_0000 : begin
          address = 5;
          acks_out = 8'h20;
          end
      8'bx100_0000 : begin
          address = 6;
          acks_out = 8'h40;
          end
      8'b1000_0000 : begin
          address = 7;
          acks_out = 8'h80;
          end
      default : begin
          address = 0;
          acks_out = 8'h00;
          end
    endcase
end

always@(*) begin
    case(address)
      8'd0 : mux_out = address_in0;
      8'd1 : mux_out = address_in1;
      8'd2 : mux_out = address_in2;
      8'd3 : mux_out = address_in3;
      8'd4 : mux_out = address_in4;
      8'd5 : mux_out = address_in5;
      8'd6 : mux_out = address_in6;
      8'd7 : mux_out = address_in7;
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



module ROMFile( address , data , read_en);
parameter n_bit = 7;
input [6:0] address;
output [n_bit:0] data;
input read_en;
reg [n_bit:0] mem [0:127] ;
assign data = read_en ? mem[address] : 0;

initial
begin
$readmemb("hidden_weights.list", mem);
end
endmodule



module IF_neuron(clk, resetn, input_current, spike);
parameter n_bit = 7;
parameter theta = 10'h1FF;
parameter refractory = 50000;
parameter max_bit = 10;

input clk, resetn;
input [n_bit:0]input_current;
output spike;

wire [max_bit:0] add_out;
wire overflow;
reg [max_bit:0] membrane_potential;
wire threshold_enable;
reg [15:0] ref_counter;

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
    else
      ref_counter <= ref_counter-1;
end

always@(posedge clk) begin
    membrane_potential <= add_out;
end

endmodule
