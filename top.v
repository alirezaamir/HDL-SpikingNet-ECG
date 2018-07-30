module top (clk , resetn, output_class, no_spike, end_process);
input clk , resetn;
output [1:0] output_class;
output no_spike, end_process;

wire timer_en;
main_counter cnt_main(.clk(clk), .resetn(resetn), .micro100(timer_en));

wire	in_spk00_00,	in_spk01_00,	in_spk02_00,	in_spk03_00,
	in_spk04_00,	in_spk05_00,	in_spk06_00,	in_spk07_00,
	in_spk08_00,	in_spk09_00,	in_spk10_00,	in_spk11_00,
	in_spk12_00,	in_spk13_00,	in_spk14_00,	in_spk15_00,
	in_spk00_01,	in_spk01_01,	in_spk02_01,	in_spk03_01,
	in_spk04_01,	in_spk05_01,	in_spk06_01,	in_spk07_01,
	in_spk08_01,	in_spk09_01,	in_spk10_01,	in_spk11_01,
	in_spk12_01,	in_spk13_01,	in_spk14_01,	in_spk15_01,
	in_spk00_02,	in_spk01_02,	in_spk02_02,	in_spk03_02,
	in_spk04_02,	in_spk05_02,	in_spk06_02,	in_spk07_02,
	in_spk08_02,	in_spk09_02,	in_spk10_02,	in_spk11_02,
	in_spk12_02,	in_spk13_02,	in_spk14_02,	in_spk15_02,
	in_spk00_03,	in_spk01_03,	in_spk02_03,	in_spk03_03,
	in_spk04_03,	in_spk05_03,	in_spk06_03,	in_spk07_03,
	in_spk08_03,	in_spk09_03,	in_spk10_03,	in_spk11_03,
	in_spk12_03,	in_spk13_03,	in_spk14_03,	in_spk15_03,
	in_spk00_04,	in_spk01_04,	in_spk02_04,	in_spk03_04,
	in_spk04_04,	in_spk05_04,	in_spk06_04,	in_spk07_04,
	in_spk08_04,	in_spk09_04,	in_spk10_04,	in_spk11_04,
	in_spk12_04,	in_spk13_04,	in_spk14_04,	in_spk15_04,
	in_spk00_05,	in_spk01_05,	in_spk02_05,	in_spk03_05,
	in_spk04_05,	in_spk05_05,	in_spk06_05,	in_spk07_05,
	in_spk08_05,	in_spk09_05,	in_spk10_05,	in_spk11_05,
	in_spk12_05,	in_spk13_05,	in_spk14_05,	in_spk15_05,
	in_spk00_06,	in_spk01_06,	in_spk02_06,	in_spk03_06,
	in_spk04_06,	in_spk05_06,	in_spk06_06,	in_spk07_06,
	in_spk08_06,	in_spk09_06,	in_spk10_06,	in_spk11_06,
	in_spk12_06,	in_spk13_06,	in_spk14_06,	in_spk15_06,
	in_spk00_07,	in_spk01_07,	in_spk02_07,	in_spk03_07,
	in_spk04_07,	in_spk05_07,	in_spk06_07,	in_spk07_07,
	in_spk08_07,	in_spk09_07,	in_spk10_07,	in_spk11_07,
	in_spk12_07,	in_spk13_07,	in_spk14_07,	in_spk15_07,
	in_spk00_08,	in_spk01_08,	in_spk02_08,	in_spk03_08,
	in_spk04_08,	in_spk05_08,	in_spk06_08,	in_spk07_08,
	in_spk08_08,	in_spk09_08,	in_spk10_08,	in_spk11_08,
	in_spk12_08,	in_spk13_08,	in_spk14_08,	in_spk15_08,
	in_spk00_09,	in_spk01_09,	in_spk02_09,	in_spk03_09,
	in_spk04_09,	in_spk05_09,	in_spk06_09,	in_spk07_09,
	in_spk08_09,	in_spk09_09,	in_spk10_09,	in_spk11_09,
	in_spk12_09,	in_spk13_09,	in_spk14_09,	in_spk15_09,
	in_spk00_10,	in_spk01_10,	in_spk02_10,	in_spk03_10,
	in_spk04_10,	in_spk05_10,	in_spk06_10,	in_spk07_10,
	in_spk08_10,	in_spk09_10,	in_spk10_10,	in_spk11_10,
	in_spk12_10,	in_spk13_10,	in_spk14_10,	in_spk15_10,
	in_spk00_11,	in_spk01_11,	in_spk02_11,	in_spk03_11,
	in_spk04_11,	in_spk05_11,	in_spk06_11,	in_spk07_11,
	in_spk08_11,	in_spk09_11,	in_spk10_11,	in_spk11_11,
	in_spk12_11,	in_spk13_11,	in_spk14_11,	in_spk15_11,
	in_spk00_12,	in_spk01_12,	in_spk02_12,	in_spk03_12,
	in_spk04_12,	in_spk05_12,	in_spk06_12,	in_spk07_12,
	in_spk08_12,	in_spk09_12,	in_spk10_12,	in_spk11_12,
	in_spk12_12,	in_spk13_12,	in_spk14_12,	in_spk15_12,
	in_spk00_13,	in_spk01_13,	in_spk02_13,	in_spk03_13,
	in_spk04_13,	in_spk05_13,	in_spk06_13,	in_spk07_13,
	in_spk08_13,	in_spk09_13,	in_spk10_13,	in_spk11_13,
	in_spk12_13,	in_spk13_13,	in_spk14_13,	in_spk15_13,
	in_spk00_14,	in_spk01_14,	in_spk02_14,	in_spk03_14,
	in_spk04_14,	in_spk05_14,	in_spk06_14,	in_spk07_14,
	in_spk08_14,	in_spk09_14,	in_spk10_14,	in_spk11_14,
	in_spk12_14,	in_spk13_14,	in_spk14_14,	in_spk15_14,
	in_spk00_15,	in_spk01_15,	in_spk02_15,	in_spk03_15,
	in_spk04_15,	in_spk05_15,	in_spk06_15,	in_spk07_15,
	in_spk08_15,	in_spk09_15,	in_spk10_15,	in_spk11_15,
	in_spk12_15,	in_spk13_15,	in_spk14_15,	in_spk15_15;

wire	in_ack00_00,	in_ack01_00,	in_ack02_00,	in_ack03_00,
  	in_ack04_00,	in_ack05_00,	in_ack06_00,	in_ack07_00,
  	in_ack08_00,	in_ack09_00,	in_ack10_00,	in_ack11_00,
  	in_ack12_00,	in_ack13_00,	in_ack14_00,	in_ack15_00,
  	in_ack00_01,	in_ack01_01,	in_ack02_01,	in_ack03_01,
  	in_ack04_01,	in_ack05_01,	in_ack06_01,	in_ack07_01,
  	in_ack08_01,	in_ack09_01,	in_ack10_01,	in_ack11_01,
  	in_ack12_01,	in_ack13_01,	in_ack14_01,	in_ack15_01,
  	in_ack00_02,	in_ack01_02,	in_ack02_02,	in_ack03_02,
  	in_ack04_02,	in_ack05_02,	in_ack06_02,	in_ack07_02,
  	in_ack08_02,	in_ack09_02,	in_ack10_02,	in_ack11_02,
  	in_ack12_02,	in_ack13_02,	in_ack14_02,	in_ack15_02,
  	in_ack00_03,	in_ack01_03,	in_ack02_03,	in_ack03_03,
  	in_ack04_03,	in_ack05_03,	in_ack06_03,	in_ack07_03,
  	in_ack08_03,	in_ack09_03,	in_ack10_03,	in_ack11_03,
  	in_ack12_03,	in_ack13_03,	in_ack14_03,	in_ack15_03,
  	in_ack00_04,	in_ack01_04,	in_ack02_04,	in_ack03_04,
  	in_ack04_04,	in_ack05_04,	in_ack06_04,	in_ack07_04,
  	in_ack08_04,	in_ack09_04,	in_ack10_04,	in_ack11_04,
  	in_ack12_04,	in_ack13_04,	in_ack14_04,	in_ack15_04,
  	in_ack00_05,	in_ack01_05,	in_ack02_05,	in_ack03_05,
  	in_ack04_05,	in_ack05_05,	in_ack06_05,	in_ack07_05,
  	in_ack08_05,	in_ack09_05,	in_ack10_05,	in_ack11_05,
  	in_ack12_05,	in_ack13_05,	in_ack14_05,	in_ack15_05,
  	in_ack00_06,	in_ack01_06,	in_ack02_06,	in_ack03_06,
  	in_ack04_06,	in_ack05_06,	in_ack06_06,	in_ack07_06,
  	in_ack08_06,	in_ack09_06,	in_ack10_06,	in_ack11_06,
  	in_ack12_06,	in_ack13_06,	in_ack14_06,	in_ack15_06,
  	in_ack00_07,	in_ack01_07,	in_ack02_07,	in_ack03_07,
  	in_ack04_07,	in_ack05_07,	in_ack06_07,	in_ack07_07,
  	in_ack08_07,	in_ack09_07,	in_ack10_07,	in_ack11_07,
  	in_ack12_07,	in_ack13_07,	in_ack14_07,	in_ack15_07,
  	in_ack00_08,	in_ack01_08,	in_ack02_08,	in_ack03_08,
  	in_ack04_08,	in_ack05_08,	in_ack06_08,	in_ack07_08,
  	in_ack08_08,	in_ack09_08,	in_ack10_08,	in_ack11_08,
  	in_ack12_08,	in_ack13_08,	in_ack14_08,	in_ack15_08,
  	in_ack00_09,	in_ack01_09,	in_ack02_09,	in_ack03_09,
  	in_ack04_09,	in_ack05_09,	in_ack06_09,	in_ack07_09,
  	in_ack08_09,	in_ack09_09,	in_ack10_09,	in_ack11_09,
  	in_ack12_09,	in_ack13_09,	in_ack14_09,	in_ack15_09,
  	in_ack00_10,	in_ack01_10,	in_ack02_10,	in_ack03_10,
  	in_ack04_10,	in_ack05_10,	in_ack06_10,	in_ack07_10,
  	in_ack08_10,	in_ack09_10,	in_ack10_10,	in_ack11_10,
  	in_ack12_10,	in_ack13_10,	in_ack14_10,	in_ack15_10,
  	in_ack00_11,	in_ack01_11,	in_ack02_11,	in_ack03_11,
  	in_ack04_11,	in_ack05_11,	in_ack06_11,	in_ack07_11,
  	in_ack08_11,	in_ack09_11,	in_ack10_11,	in_ack11_11,
  	in_ack12_11,	in_ack13_11,	in_ack14_11,	in_ack15_11,
  	in_ack00_12,	in_ack01_12,	in_ack02_12,	in_ack03_12,
  	in_ack04_12,	in_ack05_12,	in_ack06_12,	in_ack07_12,
  	in_ack08_12,	in_ack09_12,	in_ack10_12,	in_ack11_12,
  	in_ack12_12,	in_ack13_12,	in_ack14_12,	in_ack15_12,
  	in_ack00_13,	in_ack01_13,	in_ack02_13,	in_ack03_13,
  	in_ack04_13,	in_ack05_13,	in_ack06_13,	in_ack07_13,
  	in_ack08_13,	in_ack09_13,	in_ack10_13,	in_ack11_13,
  	in_ack12_13,	in_ack13_13,	in_ack14_13,	in_ack15_13,
  	in_ack00_14,	in_ack01_14,	in_ack02_14,	in_ack03_14,
  	in_ack04_14,	in_ack05_14,	in_ack06_14,	in_ack07_14,
  	in_ack08_14,	in_ack09_14,	in_ack10_14,	in_ack11_14,
  	in_ack12_14,	in_ack13_14,	in_ack14_14,	in_ack15_14,
  	in_ack00_15,	in_ack01_15,	in_ack02_15,	in_ack03_15,
  	in_ack04_15,	in_ack05_15,	in_ack06_15,	in_ack07_15,
  	in_ack08_15,	in_ack09_15,	in_ack10_15,	in_ack11_15,
  	in_ack12_15,	in_ack13_15,	in_ack14_15,	in_ack15_15;

reg [9:0] in_period[0:255];

input_neuron neuron_in000 (.period(in_period[0]), .clk(clk), .ack_in(in_ack00_00),
		.spike(in_spk00_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in001 (.period(in_period[1]), .clk(clk), .ack_in(in_ack01_00),
		.spike(in_spk01_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in002 (.period(in_period[2]), .clk(clk), .ack_in(in_ack02_00),
		.spike(in_spk02_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in003 (.period(in_period[3]), .clk(clk), .ack_in(in_ack03_00),
		.spike(in_spk03_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in004 (.period(in_period[4]), .clk(clk), .ack_in(in_ack04_00),
		.spike(in_spk04_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in005 (.period(in_period[5]), .clk(clk), .ack_in(in_ack05_00),
		.spike(in_spk05_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in006 (.period(in_period[6]), .clk(clk), .ack_in(in_ack06_00),
		.spike(in_spk06_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in007 (.period(in_period[7]), .clk(clk), .ack_in(in_ack07_00),
		.spike(in_spk07_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in008 (.period(in_period[8]), .clk(clk), .ack_in(in_ack08_00),
		.spike(in_spk08_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in009 (.period(in_period[9]), .clk(clk), .ack_in(in_ack09_00),
		.spike(in_spk09_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in010 (.period(in_period[10]), .clk(clk), .ack_in(in_ack10_00),
		.spike(in_spk10_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in011 (.period(in_period[11]), .clk(clk), .ack_in(in_ack11_00),
		.spike(in_spk11_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in012 (.period(in_period[12]), .clk(clk), .ack_in(in_ack12_00),
		.spike(in_spk12_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in013 (.period(in_period[13]), .clk(clk), .ack_in(in_ack13_00),
		.spike(in_spk13_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in014 (.period(in_period[14]), .clk(clk), .ack_in(in_ack14_00),
		.spike(in_spk14_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in015 (.period(in_period[15]), .clk(clk), .ack_in(in_ack15_00),
		.spike(in_spk15_00), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in016 (.period(in_period[16]), .clk(clk), .ack_in(in_ack00_01),
		.spike(in_spk00_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in017 (.period(in_period[17]), .clk(clk), .ack_in(in_ack01_01),
		.spike(in_spk01_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in018 (.period(in_period[18]), .clk(clk), .ack_in(in_ack02_01),
		.spike(in_spk02_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in019 (.period(in_period[19]), .clk(clk), .ack_in(in_ack03_01),
		.spike(in_spk03_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in020 (.period(in_period[20]), .clk(clk), .ack_in(in_ack04_01),
		.spike(in_spk04_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in021 (.period(in_period[21]), .clk(clk), .ack_in(in_ack05_01),
		.spike(in_spk05_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in022 (.period(in_period[22]), .clk(clk), .ack_in(in_ack06_01),
		.spike(in_spk06_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in023 (.period(in_period[23]), .clk(clk), .ack_in(in_ack07_01),
		.spike(in_spk07_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in024 (.period(in_period[24]), .clk(clk), .ack_in(in_ack08_01),
		.spike(in_spk08_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in025 (.period(in_period[25]), .clk(clk), .ack_in(in_ack09_01),
		.spike(in_spk09_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in026 (.period(in_period[26]), .clk(clk), .ack_in(in_ack10_01),
		.spike(in_spk10_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in027 (.period(in_period[27]), .clk(clk), .ack_in(in_ack11_01),
		.spike(in_spk11_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in028 (.period(in_period[28]), .clk(clk), .ack_in(in_ack12_01),
		.spike(in_spk12_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in029 (.period(in_period[29]), .clk(clk), .ack_in(in_ack13_01),
		.spike(in_spk13_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in030 (.period(in_period[30]), .clk(clk), .ack_in(in_ack14_01),
		.spike(in_spk14_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in031 (.period(in_period[31]), .clk(clk), .ack_in(in_ack15_01),
		.spike(in_spk15_01), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in032 (.period(in_period[32]), .clk(clk), .ack_in(in_ack00_02),
		.spike(in_spk00_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in033 (.period(in_period[33]), .clk(clk), .ack_in(in_ack01_02),
		.spike(in_spk01_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in034 (.period(in_period[34]), .clk(clk), .ack_in(in_ack02_02),
		.spike(in_spk02_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in035 (.period(in_period[35]), .clk(clk), .ack_in(in_ack03_02),
		.spike(in_spk03_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in036 (.period(in_period[36]), .clk(clk), .ack_in(in_ack04_02),
		.spike(in_spk04_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in037 (.period(in_period[37]), .clk(clk), .ack_in(in_ack05_02),
		.spike(in_spk05_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in038 (.period(in_period[38]), .clk(clk), .ack_in(in_ack06_02),
		.spike(in_spk06_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in039 (.period(in_period[39]), .clk(clk), .ack_in(in_ack07_02),
		.spike(in_spk07_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in040 (.period(in_period[40]), .clk(clk), .ack_in(in_ack08_02),
		.spike(in_spk08_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in041 (.period(in_period[41]), .clk(clk), .ack_in(in_ack09_02),
		.spike(in_spk09_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in042 (.period(in_period[42]), .clk(clk), .ack_in(in_ack10_02),
		.spike(in_spk10_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in043 (.period(in_period[43]), .clk(clk), .ack_in(in_ack11_02),
		.spike(in_spk11_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in044 (.period(in_period[44]), .clk(clk), .ack_in(in_ack12_02),
		.spike(in_spk12_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in045 (.period(in_period[45]), .clk(clk), .ack_in(in_ack13_02),
		.spike(in_spk13_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in046 (.period(in_period[46]), .clk(clk), .ack_in(in_ack14_02),
		.spike(in_spk14_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in047 (.period(in_period[47]), .clk(clk), .ack_in(in_ack15_02),
		.spike(in_spk15_02), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in048 (.period(in_period[48]), .clk(clk), .ack_in(in_ack00_03),
		.spike(in_spk00_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in049 (.period(in_period[49]), .clk(clk), .ack_in(in_ack01_03),
		.spike(in_spk01_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in050 (.period(in_period[50]), .clk(clk), .ack_in(in_ack02_03),
		.spike(in_spk02_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in051 (.period(in_period[51]), .clk(clk), .ack_in(in_ack03_03),
		.spike(in_spk03_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in052 (.period(in_period[52]), .clk(clk), .ack_in(in_ack04_03),
		.spike(in_spk04_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in053 (.period(in_period[53]), .clk(clk), .ack_in(in_ack05_03),
		.spike(in_spk05_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in054 (.period(in_period[54]), .clk(clk), .ack_in(in_ack06_03),
		.spike(in_spk06_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in055 (.period(in_period[55]), .clk(clk), .ack_in(in_ack07_03),
		.spike(in_spk07_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in056 (.period(in_period[56]), .clk(clk), .ack_in(in_ack08_03),
		.spike(in_spk08_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in057 (.period(in_period[57]), .clk(clk), .ack_in(in_ack09_03),
		.spike(in_spk09_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in058 (.period(in_period[58]), .clk(clk), .ack_in(in_ack10_03),
		.spike(in_spk10_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in059 (.period(in_period[59]), .clk(clk), .ack_in(in_ack11_03),
		.spike(in_spk11_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in060 (.period(in_period[60]), .clk(clk), .ack_in(in_ack12_03),
		.spike(in_spk12_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in061 (.period(in_period[61]), .clk(clk), .ack_in(in_ack13_03),
		.spike(in_spk13_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in062 (.period(in_period[62]), .clk(clk), .ack_in(in_ack14_03),
		.spike(in_spk14_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in063 (.period(in_period[63]), .clk(clk), .ack_in(in_ack15_03),
		.spike(in_spk15_03), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in064 (.period(in_period[64]), .clk(clk), .ack_in(in_ack00_04),
		.spike(in_spk00_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in065 (.period(in_period[65]), .clk(clk), .ack_in(in_ack01_04),
		.spike(in_spk01_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in066 (.period(in_period[66]), .clk(clk), .ack_in(in_ack02_04),
		.spike(in_spk02_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in067 (.period(in_period[67]), .clk(clk), .ack_in(in_ack03_04),
		.spike(in_spk03_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in068 (.period(in_period[68]), .clk(clk), .ack_in(in_ack04_04),
		.spike(in_spk04_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in069 (.period(in_period[69]), .clk(clk), .ack_in(in_ack05_04),
		.spike(in_spk05_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in070 (.period(in_period[70]), .clk(clk), .ack_in(in_ack06_04),
		.spike(in_spk06_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in071 (.period(in_period[71]), .clk(clk), .ack_in(in_ack07_04),
		.spike(in_spk07_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in072 (.period(in_period[72]), .clk(clk), .ack_in(in_ack08_04),
		.spike(in_spk08_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in073 (.period(in_period[73]), .clk(clk), .ack_in(in_ack09_04),
		.spike(in_spk09_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in074 (.period(in_period[74]), .clk(clk), .ack_in(in_ack10_04),
		.spike(in_spk10_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in075 (.period(in_period[75]), .clk(clk), .ack_in(in_ack11_04),
		.spike(in_spk11_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in076 (.period(in_period[76]), .clk(clk), .ack_in(in_ack12_04),
		.spike(in_spk12_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in077 (.period(in_period[77]), .clk(clk), .ack_in(in_ack13_04),
		.spike(in_spk13_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in078 (.period(in_period[78]), .clk(clk), .ack_in(in_ack14_04),
		.spike(in_spk14_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in079 (.period(in_period[79]), .clk(clk), .ack_in(in_ack15_04),
		.spike(in_spk15_04), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in080 (.period(in_period[80]), .clk(clk), .ack_in(in_ack00_05),
		.spike(in_spk00_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in081 (.period(in_period[81]), .clk(clk), .ack_in(in_ack01_05),
		.spike(in_spk01_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in082 (.period(in_period[82]), .clk(clk), .ack_in(in_ack02_05),
		.spike(in_spk02_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in083 (.period(in_period[83]), .clk(clk), .ack_in(in_ack03_05),
		.spike(in_spk03_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in084 (.period(in_period[84]), .clk(clk), .ack_in(in_ack04_05),
		.spike(in_spk04_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in085 (.period(in_period[85]), .clk(clk), .ack_in(in_ack05_05),
		.spike(in_spk05_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in086 (.period(in_period[86]), .clk(clk), .ack_in(in_ack06_05),
		.spike(in_spk06_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in087 (.period(in_period[87]), .clk(clk), .ack_in(in_ack07_05),
		.spike(in_spk07_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in088 (.period(in_period[88]), .clk(clk), .ack_in(in_ack08_05),
		.spike(in_spk08_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in089 (.period(in_period[89]), .clk(clk), .ack_in(in_ack09_05),
		.spike(in_spk09_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in090 (.period(in_period[90]), .clk(clk), .ack_in(in_ack10_05),
		.spike(in_spk10_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in091 (.period(in_period[91]), .clk(clk), .ack_in(in_ack11_05),
		.spike(in_spk11_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in092 (.period(in_period[92]), .clk(clk), .ack_in(in_ack12_05),
		.spike(in_spk12_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in093 (.period(in_period[93]), .clk(clk), .ack_in(in_ack13_05),
		.spike(in_spk13_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in094 (.period(in_period[94]), .clk(clk), .ack_in(in_ack14_05),
		.spike(in_spk14_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in095 (.period(in_period[95]), .clk(clk), .ack_in(in_ack15_05),
		.spike(in_spk15_05), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in096 (.period(in_period[96]), .clk(clk), .ack_in(in_ack00_06),
		.spike(in_spk00_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in097 (.period(in_period[97]), .clk(clk), .ack_in(in_ack01_06),
		.spike(in_spk01_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in098 (.period(in_period[98]), .clk(clk), .ack_in(in_ack02_06),
		.spike(in_spk02_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in099 (.period(in_period[99]), .clk(clk), .ack_in(in_ack03_06),
		.spike(in_spk03_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in100 (.period(in_period[100]), .clk(clk), .ack_in(in_ack04_06),
		.spike(in_spk04_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in101 (.period(in_period[101]), .clk(clk), .ack_in(in_ack05_06),
		.spike(in_spk05_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in102 (.period(in_period[102]), .clk(clk), .ack_in(in_ack06_06),
		.spike(in_spk06_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in103 (.period(in_period[103]), .clk(clk), .ack_in(in_ack07_06),
		.spike(in_spk07_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in104 (.period(in_period[104]), .clk(clk), .ack_in(in_ack08_06),
		.spike(in_spk08_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in105 (.period(in_period[105]), .clk(clk), .ack_in(in_ack09_06),
		.spike(in_spk09_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in106 (.period(in_period[106]), .clk(clk), .ack_in(in_ack10_06),
		.spike(in_spk10_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in107 (.period(in_period[107]), .clk(clk), .ack_in(in_ack11_06),
		.spike(in_spk11_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in108 (.period(in_period[108]), .clk(clk), .ack_in(in_ack12_06),
		.spike(in_spk12_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in109 (.period(in_period[109]), .clk(clk), .ack_in(in_ack13_06),
		.spike(in_spk13_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in110 (.period(in_period[110]), .clk(clk), .ack_in(in_ack14_06),
		.spike(in_spk14_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in111 (.period(in_period[111]), .clk(clk), .ack_in(in_ack15_06),
		.spike(in_spk15_06), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in112 (.period(in_period[112]), .clk(clk), .ack_in(in_ack00_07),
		.spike(in_spk00_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in113 (.period(in_period[113]), .clk(clk), .ack_in(in_ack01_07),
		.spike(in_spk01_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in114 (.period(in_period[114]), .clk(clk), .ack_in(in_ack02_07),
		.spike(in_spk02_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in115 (.period(in_period[115]), .clk(clk), .ack_in(in_ack03_07),
		.spike(in_spk03_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in116 (.period(in_period[116]), .clk(clk), .ack_in(in_ack04_07),
		.spike(in_spk04_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in117 (.period(in_period[117]), .clk(clk), .ack_in(in_ack05_07),
		.spike(in_spk05_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in118 (.period(in_period[118]), .clk(clk), .ack_in(in_ack06_07),
		.spike(in_spk06_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in119 (.period(in_period[119]), .clk(clk), .ack_in(in_ack07_07),
		.spike(in_spk07_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in120 (.period(in_period[120]), .clk(clk), .ack_in(in_ack08_07),
		.spike(in_spk08_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in121 (.period(in_period[121]), .clk(clk), .ack_in(in_ack09_07),
		.spike(in_spk09_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in122 (.period(in_period[122]), .clk(clk), .ack_in(in_ack10_07),
		.spike(in_spk10_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in123 (.period(in_period[123]), .clk(clk), .ack_in(in_ack11_07),
		.spike(in_spk11_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in124 (.period(in_period[124]), .clk(clk), .ack_in(in_ack12_07),
		.spike(in_spk12_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in125 (.period(in_period[125]), .clk(clk), .ack_in(in_ack13_07),
		.spike(in_spk13_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in126 (.period(in_period[126]), .clk(clk), .ack_in(in_ack14_07),
		.spike(in_spk14_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in127 (.period(in_period[127]), .clk(clk), .ack_in(in_ack15_07),
		.spike(in_spk15_07), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in128 (.period(in_period[128]), .clk(clk), .ack_in(in_ack00_08),
		.spike(in_spk00_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in129 (.period(in_period[129]), .clk(clk), .ack_in(in_ack01_08),
		.spike(in_spk01_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in130 (.period(in_period[130]), .clk(clk), .ack_in(in_ack02_08),
		.spike(in_spk02_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in131 (.period(in_period[131]), .clk(clk), .ack_in(in_ack03_08),
		.spike(in_spk03_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in132 (.period(in_period[132]), .clk(clk), .ack_in(in_ack04_08),
		.spike(in_spk04_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in133 (.period(in_period[133]), .clk(clk), .ack_in(in_ack05_08),
		.spike(in_spk05_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in134 (.period(in_period[134]), .clk(clk), .ack_in(in_ack06_08),
		.spike(in_spk06_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in135 (.period(in_period[135]), .clk(clk), .ack_in(in_ack07_08),
		.spike(in_spk07_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in136 (.period(in_period[136]), .clk(clk), .ack_in(in_ack08_08),
		.spike(in_spk08_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in137 (.period(in_period[137]), .clk(clk), .ack_in(in_ack09_08),
		.spike(in_spk09_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in138 (.period(in_period[138]), .clk(clk), .ack_in(in_ack10_08),
		.spike(in_spk10_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in139 (.period(in_period[139]), .clk(clk), .ack_in(in_ack11_08),
		.spike(in_spk11_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in140 (.period(in_period[140]), .clk(clk), .ack_in(in_ack12_08),
		.spike(in_spk12_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in141 (.period(in_period[141]), .clk(clk), .ack_in(in_ack13_08),
		.spike(in_spk13_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in142 (.period(in_period[142]), .clk(clk), .ack_in(in_ack14_08),
		.spike(in_spk14_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in143 (.period(in_period[143]), .clk(clk), .ack_in(in_ack15_08),
		.spike(in_spk15_08), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in144 (.period(in_period[144]), .clk(clk), .ack_in(in_ack00_09),
		.spike(in_spk00_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in145 (.period(in_period[145]), .clk(clk), .ack_in(in_ack01_09),
		.spike(in_spk01_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in146 (.period(in_period[146]), .clk(clk), .ack_in(in_ack02_09),
		.spike(in_spk02_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in147 (.period(in_period[147]), .clk(clk), .ack_in(in_ack03_09),
		.spike(in_spk03_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in148 (.period(in_period[148]), .clk(clk), .ack_in(in_ack04_09),
		.spike(in_spk04_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in149 (.period(in_period[149]), .clk(clk), .ack_in(in_ack05_09),
		.spike(in_spk05_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in150 (.period(in_period[150]), .clk(clk), .ack_in(in_ack06_09),
		.spike(in_spk06_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in151 (.period(in_period[151]), .clk(clk), .ack_in(in_ack07_09),
		.spike(in_spk07_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in152 (.period(in_period[152]), .clk(clk), .ack_in(in_ack08_09),
		.spike(in_spk08_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in153 (.period(in_period[153]), .clk(clk), .ack_in(in_ack09_09),
		.spike(in_spk09_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in154 (.period(in_period[154]), .clk(clk), .ack_in(in_ack10_09),
		.spike(in_spk10_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in155 (.period(in_period[155]), .clk(clk), .ack_in(in_ack11_09),
		.spike(in_spk11_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in156 (.period(in_period[156]), .clk(clk), .ack_in(in_ack12_09),
		.spike(in_spk12_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in157 (.period(in_period[157]), .clk(clk), .ack_in(in_ack13_09),
		.spike(in_spk13_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in158 (.period(in_period[158]), .clk(clk), .ack_in(in_ack14_09),
		.spike(in_spk14_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in159 (.period(in_period[159]), .clk(clk), .ack_in(in_ack15_09),
		.spike(in_spk15_09), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in160 (.period(in_period[160]), .clk(clk), .ack_in(in_ack00_10),
		.spike(in_spk00_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in161 (.period(in_period[161]), .clk(clk), .ack_in(in_ack01_10),
		.spike(in_spk01_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in162 (.period(in_period[162]), .clk(clk), .ack_in(in_ack02_10),
		.spike(in_spk02_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in163 (.period(in_period[163]), .clk(clk), .ack_in(in_ack03_10),
		.spike(in_spk03_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in164 (.period(in_period[164]), .clk(clk), .ack_in(in_ack04_10),
		.spike(in_spk04_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in165 (.period(in_period[165]), .clk(clk), .ack_in(in_ack05_10),
		.spike(in_spk05_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in166 (.period(in_period[166]), .clk(clk), .ack_in(in_ack06_10),
		.spike(in_spk06_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in167 (.period(in_period[167]), .clk(clk), .ack_in(in_ack07_10),
		.spike(in_spk07_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in168 (.period(in_period[168]), .clk(clk), .ack_in(in_ack08_10),
		.spike(in_spk08_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in169 (.period(in_period[169]), .clk(clk), .ack_in(in_ack09_10),
		.spike(in_spk09_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in170 (.period(in_period[170]), .clk(clk), .ack_in(in_ack10_10),
		.spike(in_spk10_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in171 (.period(in_period[171]), .clk(clk), .ack_in(in_ack11_10),
		.spike(in_spk11_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in172 (.period(in_period[172]), .clk(clk), .ack_in(in_ack12_10),
		.spike(in_spk12_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in173 (.period(in_period[173]), .clk(clk), .ack_in(in_ack13_10),
		.spike(in_spk13_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in174 (.period(in_period[174]), .clk(clk), .ack_in(in_ack14_10),
		.spike(in_spk14_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in175 (.period(in_period[175]), .clk(clk), .ack_in(in_ack15_10),
		.spike(in_spk15_10), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in176 (.period(in_period[176]), .clk(clk), .ack_in(in_ack00_11),
		.spike(in_spk00_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in177 (.period(in_period[177]), .clk(clk), .ack_in(in_ack01_11),
		.spike(in_spk01_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in178 (.period(in_period[178]), .clk(clk), .ack_in(in_ack02_11),
		.spike(in_spk02_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in179 (.period(in_period[179]), .clk(clk), .ack_in(in_ack03_11),
		.spike(in_spk03_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in180 (.period(in_period[180]), .clk(clk), .ack_in(in_ack04_11),
		.spike(in_spk04_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in181 (.period(in_period[181]), .clk(clk), .ack_in(in_ack05_11),
		.spike(in_spk05_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in182 (.period(in_period[182]), .clk(clk), .ack_in(in_ack06_11),
		.spike(in_spk06_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in183 (.period(in_period[183]), .clk(clk), .ack_in(in_ack07_11),
		.spike(in_spk07_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in184 (.period(in_period[184]), .clk(clk), .ack_in(in_ack08_11),
		.spike(in_spk08_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in185 (.period(in_period[185]), .clk(clk), .ack_in(in_ack09_11),
		.spike(in_spk09_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in186 (.period(in_period[186]), .clk(clk), .ack_in(in_ack10_11),
		.spike(in_spk10_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in187 (.period(in_period[187]), .clk(clk), .ack_in(in_ack11_11),
		.spike(in_spk11_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in188 (.period(in_period[188]), .clk(clk), .ack_in(in_ack12_11),
		.spike(in_spk12_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in189 (.period(in_period[189]), .clk(clk), .ack_in(in_ack13_11),
		.spike(in_spk13_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in190 (.period(in_period[190]), .clk(clk), .ack_in(in_ack14_11),
		.spike(in_spk14_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in191 (.period(in_period[191]), .clk(clk), .ack_in(in_ack15_11),
		.spike(in_spk15_11), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in192 (.period(in_period[192]), .clk(clk), .ack_in(in_ack00_12),
		.spike(in_spk00_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in193 (.period(in_period[193]), .clk(clk), .ack_in(in_ack01_12),
		.spike(in_spk01_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in194 (.period(in_period[194]), .clk(clk), .ack_in(in_ack02_12),
		.spike(in_spk02_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in195 (.period(in_period[195]), .clk(clk), .ack_in(in_ack03_12),
		.spike(in_spk03_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in196 (.period(in_period[196]), .clk(clk), .ack_in(in_ack04_12),
		.spike(in_spk04_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in197 (.period(in_period[197]), .clk(clk), .ack_in(in_ack05_12),
		.spike(in_spk05_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in198 (.period(in_period[198]), .clk(clk), .ack_in(in_ack06_12),
		.spike(in_spk06_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in199 (.period(in_period[199]), .clk(clk), .ack_in(in_ack07_12),
		.spike(in_spk07_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in200 (.period(in_period[200]), .clk(clk), .ack_in(in_ack08_12),
		.spike(in_spk08_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in201 (.period(in_period[201]), .clk(clk), .ack_in(in_ack09_12),
		.spike(in_spk09_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in202 (.period(in_period[202]), .clk(clk), .ack_in(in_ack10_12),
		.spike(in_spk10_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in203 (.period(in_period[203]), .clk(clk), .ack_in(in_ack11_12),
		.spike(in_spk11_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in204 (.period(in_period[204]), .clk(clk), .ack_in(in_ack12_12),
		.spike(in_spk12_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in205 (.period(in_period[205]), .clk(clk), .ack_in(in_ack13_12),
		.spike(in_spk13_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in206 (.period(in_period[206]), .clk(clk), .ack_in(in_ack14_12),
		.spike(in_spk14_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in207 (.period(in_period[207]), .clk(clk), .ack_in(in_ack15_12),
		.spike(in_spk15_12), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in208 (.period(in_period[208]), .clk(clk), .ack_in(in_ack00_13),
		.spike(in_spk00_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in209 (.period(in_period[209]), .clk(clk), .ack_in(in_ack01_13),
		.spike(in_spk01_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in210 (.period(in_period[210]), .clk(clk), .ack_in(in_ack02_13),
		.spike(in_spk02_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in211 (.period(in_period[211]), .clk(clk), .ack_in(in_ack03_13),
		.spike(in_spk03_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in212 (.period(in_period[212]), .clk(clk), .ack_in(in_ack04_13),
		.spike(in_spk04_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in213 (.period(in_period[213]), .clk(clk), .ack_in(in_ack05_13),
		.spike(in_spk05_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in214 (.period(in_period[214]), .clk(clk), .ack_in(in_ack06_13),
		.spike(in_spk06_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in215 (.period(in_period[215]), .clk(clk), .ack_in(in_ack07_13),
		.spike(in_spk07_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in216 (.period(in_period[216]), .clk(clk), .ack_in(in_ack08_13),
		.spike(in_spk08_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in217 (.period(in_period[217]), .clk(clk), .ack_in(in_ack09_13),
		.spike(in_spk09_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in218 (.period(in_period[218]), .clk(clk), .ack_in(in_ack10_13),
		.spike(in_spk10_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in219 (.period(in_period[219]), .clk(clk), .ack_in(in_ack11_13),
		.spike(in_spk11_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in220 (.period(in_period[220]), .clk(clk), .ack_in(in_ack12_13),
		.spike(in_spk12_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in221 (.period(in_period[221]), .clk(clk), .ack_in(in_ack13_13),
		.spike(in_spk13_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in222 (.period(in_period[222]), .clk(clk), .ack_in(in_ack14_13),
		.spike(in_spk14_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in223 (.period(in_period[223]), .clk(clk), .ack_in(in_ack15_13),
		.spike(in_spk15_13), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in224 (.period(in_period[224]), .clk(clk), .ack_in(in_ack00_14),
		.spike(in_spk00_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in225 (.period(in_period[225]), .clk(clk), .ack_in(in_ack01_14),
		.spike(in_spk01_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in226 (.period(in_period[226]), .clk(clk), .ack_in(in_ack02_14),
		.spike(in_spk02_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in227 (.period(in_period[227]), .clk(clk), .ack_in(in_ack03_14),
		.spike(in_spk03_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in228 (.period(in_period[228]), .clk(clk), .ack_in(in_ack04_14),
		.spike(in_spk04_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in229 (.period(in_period[229]), .clk(clk), .ack_in(in_ack05_14),
		.spike(in_spk05_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in230 (.period(in_period[230]), .clk(clk), .ack_in(in_ack06_14),
		.spike(in_spk06_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in231 (.period(in_period[231]), .clk(clk), .ack_in(in_ack07_14),
		.spike(in_spk07_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in232 (.period(in_period[232]), .clk(clk), .ack_in(in_ack08_14),
		.spike(in_spk08_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in233 (.period(in_period[233]), .clk(clk), .ack_in(in_ack09_14),
		.spike(in_spk09_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in234 (.period(in_period[234]), .clk(clk), .ack_in(in_ack10_14),
		.spike(in_spk10_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in235 (.period(in_period[235]), .clk(clk), .ack_in(in_ack11_14),
		.spike(in_spk11_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in236 (.period(in_period[236]), .clk(clk), .ack_in(in_ack12_14),
		.spike(in_spk12_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in237 (.period(in_period[237]), .clk(clk), .ack_in(in_ack13_14),
		.spike(in_spk13_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in238 (.period(in_period[238]), .clk(clk), .ack_in(in_ack14_14),
		.spike(in_spk14_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in239 (.period(in_period[239]), .clk(clk), .ack_in(in_ack15_14),
		.spike(in_spk15_14), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in240 (.period(in_period[240]), .clk(clk), .ack_in(in_ack00_15),
		.spike(in_spk00_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in241 (.period(in_period[241]), .clk(clk), .ack_in(in_ack01_15),
		.spike(in_spk01_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in242 (.period(in_period[242]), .clk(clk), .ack_in(in_ack02_15),
		.spike(in_spk02_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in243 (.period(in_period[243]), .clk(clk), .ack_in(in_ack03_15),
		.spike(in_spk03_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in244 (.period(in_period[244]), .clk(clk), .ack_in(in_ack04_15),
		.spike(in_spk04_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in245 (.period(in_period[245]), .clk(clk), .ack_in(in_ack05_15),
		.spike(in_spk05_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in246 (.period(in_period[246]), .clk(clk), .ack_in(in_ack06_15),
		.spike(in_spk06_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in247 (.period(in_period[247]), .clk(clk), .ack_in(in_ack07_15),
		.spike(in_spk07_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in248 (.period(in_period[248]), .clk(clk), .ack_in(in_ack08_15),
		.spike(in_spk08_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in249 (.period(in_period[249]), .clk(clk), .ack_in(in_ack09_15),
		.spike(in_spk09_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in250 (.period(in_period[250]), .clk(clk), .ack_in(in_ack10_15),
		.spike(in_spk10_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in251 (.period(in_period[251]), .clk(clk), .ack_in(in_ack11_15),
		.spike(in_spk11_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in252 (.period(in_period[252]), .clk(clk), .ack_in(in_ack12_15),
		.spike(in_spk12_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in253 (.period(in_period[253]), .clk(clk), .ack_in(in_ack13_15),
		.spike(in_spk13_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in254 (.period(in_period[254]), .clk(clk), .ack_in(in_ack14_15),
		.spike(in_spk14_15), .resetn(resetn), .timer_en(timer_en));
input_neuron neuron_in255 (.period(in_period[255]), .clk(clk), .ack_in(in_ack15_15),
		.spike(in_spk15_15), .resetn(resetn), .timer_en(timer_en));

wire [15:0] in_spk_00, in_spk_01, in_spk_02, in_spk_03,
  in_spk_04, in_spk_05, in_spk_06, in_spk_07,
  in_spk_08, in_spk_09, in_spk_10, in_spk_11,
  in_spk_12, in_spk_13, in_spk_14, in_spk_15;
assign in_spk_00 = {in_spk15_00, in_spk14_00, in_spk13_00, in_spk12_00,
	in_spk11_00, in_spk10_00, in_spk09_00, in_spk08_00,
	in_spk07_00, in_spk06_00, in_spk05_00, in_spk04_00,
	in_spk03_00, in_spk02_00, in_spk01_00, in_spk00_00};
assign in_spk_01 = {in_spk15_01, in_spk14_01, in_spk13_01, in_spk12_01,
	in_spk11_01, in_spk10_01, in_spk09_01, in_spk08_01,
	in_spk07_01, in_spk06_01, in_spk05_01, in_spk04_01,
	in_spk03_01, in_spk02_01, in_spk01_01, in_spk00_01};
assign in_spk_02 = {in_spk15_02, in_spk14_02, in_spk13_02, in_spk12_02,
	in_spk11_02, in_spk10_02, in_spk09_02, in_spk08_02,
	in_spk07_02, in_spk06_02, in_spk05_02, in_spk04_02,
	in_spk03_02, in_spk02_02, in_spk01_02, in_spk00_02};
assign in_spk_03 = {in_spk15_03, in_spk14_03, in_spk13_03, in_spk12_03,
	in_spk11_03, in_spk10_03, in_spk09_03, in_spk08_03,
	in_spk07_03, in_spk06_03, in_spk05_03, in_spk04_03,
	in_spk03_03, in_spk02_03, in_spk01_03, in_spk00_03};
assign in_spk_04 = {in_spk15_04, in_spk14_04, in_spk13_04, in_spk12_04,
	in_spk11_04, in_spk10_04, in_spk09_04, in_spk08_04,
	in_spk07_04, in_spk06_04, in_spk05_04, in_spk04_04,
	in_spk03_04, in_spk02_04, in_spk01_04, in_spk00_04};
assign in_spk_05 = {in_spk15_05, in_spk14_05, in_spk13_05, in_spk12_05,
	in_spk11_05, in_spk10_05, in_spk09_05, in_spk08_05,
	in_spk07_05, in_spk06_05, in_spk05_05, in_spk04_05,
	in_spk03_05, in_spk02_05, in_spk01_05, in_spk00_05};
assign in_spk_06 = {in_spk15_06, in_spk14_06, in_spk13_06, in_spk12_06,
	in_spk11_06, in_spk10_06, in_spk09_06, in_spk08_06,
	in_spk07_06, in_spk06_06, in_spk05_06, in_spk04_06,
	in_spk03_06, in_spk02_06, in_spk01_06, in_spk00_06};
assign in_spk_07 = {in_spk15_07, in_spk14_07, in_spk13_07, in_spk12_07,
	in_spk11_07, in_spk10_07, in_spk09_07, in_spk08_07,
	in_spk07_07, in_spk06_07, in_spk05_07, in_spk04_07,
	in_spk03_07, in_spk02_07, in_spk01_07, in_spk00_07};
assign in_spk_08 = {in_spk15_08, in_spk14_08, in_spk13_08, in_spk12_08,
	in_spk11_08, in_spk10_08, in_spk09_08, in_spk08_08,
	in_spk07_08, in_spk06_08, in_spk05_08, in_spk04_08,
	in_spk03_08, in_spk02_08, in_spk01_08, in_spk00_08};
assign in_spk_09 = {in_spk15_09, in_spk14_09, in_spk13_09, in_spk12_09,
	in_spk11_09, in_spk10_09, in_spk09_09, in_spk08_09,
	in_spk07_09, in_spk06_09, in_spk05_09, in_spk04_09,
	in_spk03_09, in_spk02_09, in_spk01_09, in_spk00_09};
assign in_spk_10 = {in_spk15_10, in_spk14_10, in_spk13_10, in_spk12_10,
	in_spk11_10, in_spk10_10, in_spk09_10, in_spk08_10,
	in_spk07_10, in_spk06_10, in_spk05_10, in_spk04_10,
	in_spk03_10, in_spk02_10, in_spk01_10, in_spk00_10};
assign in_spk_11 = {in_spk15_11, in_spk14_11, in_spk13_11, in_spk12_11,
	in_spk11_11, in_spk10_11, in_spk09_11, in_spk08_11,
	in_spk07_11, in_spk06_11, in_spk05_11, in_spk04_11,
	in_spk03_11, in_spk02_11, in_spk01_11, in_spk00_11};
assign in_spk_12 = {in_spk15_12, in_spk14_12, in_spk13_12, in_spk12_12,
	in_spk11_12, in_spk10_12, in_spk09_12, in_spk08_12,
	in_spk07_12, in_spk06_12, in_spk05_12, in_spk04_12,
	in_spk03_12, in_spk02_12, in_spk01_12, in_spk00_12};
assign in_spk_13 = {in_spk15_13, in_spk14_13, in_spk13_13, in_spk12_13,
	in_spk11_13, in_spk10_13, in_spk09_13, in_spk08_13,
	in_spk07_13, in_spk06_13, in_spk05_13, in_spk04_13,
	in_spk03_13, in_spk02_13, in_spk01_13, in_spk00_13};
assign in_spk_14 = {in_spk15_14, in_spk14_14, in_spk13_14, in_spk12_14,
	in_spk11_14, in_spk10_14, in_spk09_14, in_spk08_14,
	in_spk07_14, in_spk06_14, in_spk05_14, in_spk04_14,
	in_spk03_14, in_spk02_14, in_spk01_14, in_spk00_14};
assign in_spk_15 = {in_spk15_15, in_spk14_15, in_spk13_15, in_spk12_15,
	in_spk11_15, in_spk10_15, in_spk09_15, in_spk08_15,
	in_spk07_15, in_spk06_15, in_spk05_15, in_spk04_15,
	in_spk03_15, in_spk02_15, in_spk01_15, in_spk00_15};

wire [15:0] in_ack_00, in_ack_01, in_ack_02, in_ack_03,
	in_ack_04, in_ack_05, in_ack_06, in_ack_07,
	in_ack_08, in_ack_09, in_ack_10, in_ack_11,
	in_ack_12, in_ack_13, in_ack_14, in_ack_15;

assign {in_ack15_00, in_ack14_00, in_ack13_00, in_ack12_00,
	in_ack11_00, in_ack10_00, in_ack09_00, in_ack08_00,
	in_ack07_00, in_ack06_00, in_ack05_00, in_ack04_00,
	in_ack03_00, in_ack02_00, in_ack01_00, in_ack00_00} = in_ack_00;
assign {in_ack15_01, in_ack14_01, in_ack13_01, in_ack12_01,
	in_ack11_01, in_ack10_01, in_ack09_01, in_ack08_01,
	in_ack07_01, in_ack06_01, in_ack05_01, in_ack04_01,
	in_ack03_01, in_ack02_01, in_ack01_01, in_ack00_01} = in_ack_01;
assign {in_ack15_02, in_ack14_02, in_ack13_02, in_ack12_02,
	in_ack11_02, in_ack10_02, in_ack09_02, in_ack08_02,
	in_ack07_02, in_ack06_02, in_ack05_02, in_ack04_02,
	in_ack03_02, in_ack02_02, in_ack01_02, in_ack00_02} = in_ack_02;
assign {in_ack15_03, in_ack14_03, in_ack13_03, in_ack12_03,
	in_ack11_03, in_ack10_03, in_ack09_03, in_ack08_03,
	in_ack07_03, in_ack06_03, in_ack05_03, in_ack04_03,
	in_ack03_03, in_ack02_03, in_ack01_03, in_ack00_03} = in_ack_03;
assign {in_ack15_04, in_ack14_04, in_ack13_04, in_ack12_04,
	in_ack11_04, in_ack10_04, in_ack09_04, in_ack08_04,
	in_ack07_04, in_ack06_04, in_ack05_04, in_ack04_04,
	in_ack03_04, in_ack02_04, in_ack01_04, in_ack00_04} = in_ack_04;
assign {in_ack15_05, in_ack14_05, in_ack13_05, in_ack12_05,
	in_ack11_05, in_ack10_05, in_ack09_05, in_ack08_05,
	in_ack07_05, in_ack06_05, in_ack05_05, in_ack04_05,
	in_ack03_05, in_ack02_05, in_ack01_05, in_ack00_05} = in_ack_05;
assign {in_ack15_06, in_ack14_06, in_ack13_06, in_ack12_06,
	in_ack11_06, in_ack10_06, in_ack09_06, in_ack08_06,
	in_ack07_06, in_ack06_06, in_ack05_06, in_ack04_06,
	in_ack03_06, in_ack02_06, in_ack01_06, in_ack00_06} = in_ack_06;
assign {in_ack15_07, in_ack14_07, in_ack13_07, in_ack12_07,
	in_ack11_07, in_ack10_07, in_ack09_07, in_ack08_07,
	in_ack07_07, in_ack06_07, in_ack05_07, in_ack04_07,
	in_ack03_07, in_ack02_07, in_ack01_07, in_ack00_07} = in_ack_07;
assign {in_ack15_08, in_ack14_08, in_ack13_08, in_ack12_08,
	in_ack11_08, in_ack10_08, in_ack09_08, in_ack08_08,
	in_ack07_08, in_ack06_08, in_ack05_08, in_ack04_08,
	in_ack03_08, in_ack02_08, in_ack01_08, in_ack00_08} = in_ack_08;
assign {in_ack15_09, in_ack14_09, in_ack13_09, in_ack12_09,
	in_ack11_09, in_ack10_09, in_ack09_09, in_ack08_09,
	in_ack07_09, in_ack06_09, in_ack05_09, in_ack04_09,
	in_ack03_09, in_ack02_09, in_ack01_09, in_ack00_09} = in_ack_09;
assign {in_ack15_10, in_ack14_10, in_ack13_10, in_ack12_10,
	in_ack11_10, in_ack10_10, in_ack09_10, in_ack08_10,
	in_ack07_10, in_ack06_10, in_ack05_10, in_ack04_10,
	in_ack03_10, in_ack02_10, in_ack01_10, in_ack00_10} = in_ack_10;
assign {in_ack15_11, in_ack14_11, in_ack13_11, in_ack12_11,
	in_ack11_11, in_ack10_11, in_ack09_11, in_ack08_11,
	in_ack07_11, in_ack06_11, in_ack05_11, in_ack04_11,
	in_ack03_11, in_ack02_11, in_ack01_11, in_ack00_11} = in_ack_11;
assign {in_ack15_12, in_ack14_12, in_ack13_12, in_ack12_12,
	in_ack11_12, in_ack10_12, in_ack09_12, in_ack08_12,
	in_ack07_12, in_ack06_12, in_ack05_12, in_ack04_12,
	in_ack03_12, in_ack02_12, in_ack01_12, in_ack00_12} = in_ack_12;
assign {in_ack15_13, in_ack14_13, in_ack13_13, in_ack12_13,
	in_ack11_13, in_ack10_13, in_ack09_13, in_ack08_13,
	in_ack07_13, in_ack06_13, in_ack05_13, in_ack04_13,
	in_ack03_13, in_ack02_13, in_ack01_13, in_ack00_13} = in_ack_13;
assign {in_ack15_14, in_ack14_14, in_ack13_14, in_ack12_14,
	in_ack11_14, in_ack10_14, in_ack09_14, in_ack08_14,
	in_ack07_14, in_ack06_14, in_ack05_14, in_ack04_14,
	in_ack03_14, in_ack02_14, in_ack01_14, in_ack00_14} = in_ack_14;
assign {in_ack15_15, in_ack14_15, in_ack13_15, in_ack12_15,
	in_ack11_15, in_ack10_15, in_ack09_15, in_ack08_15,
	in_ack07_15, in_ack06_15, in_ack05_15, in_ack04_15,
	in_ack03_15, in_ack02_15, in_ack01_15, in_ack00_15} = in_ack_15;

wire [3:0] hb_addr_00, hb_addr_01, hb_addr_02, hb_addr_03,
	hb_addr_04, hb_addr_05, hb_addr_06, hb_addr_07,
	hb_addr_08, hb_addr_09, hb_addr_10, hb_addr_11,
	hb_addr_12, hb_addr_13, hb_addr_14, hb_addr_15;

wire hb_spk_00, hb_spk_01, hb_spk_02, hb_spk_03,
	hb_spk_04, hb_spk_05, hb_spk_06, hb_spk_07,
	hb_spk_08, hb_spk_09, hb_spk_10, hb_spk_11,
	hb_spk_12, hb_spk_13, hb_spk_14, hb_spk_15;

wire hb_ack_00, hb_ack_01, hb_ack_02, hb_ack_03,
	hb_ack_04, hb_ack_05, hb_ack_06, hb_ack_07,
	hb_ack_08, hb_ack_09, hb_ack_10, hb_ack_11,
	hb_ack_12, hb_ack_13, hb_ack_14, hb_ack_15;

handler_block h_block00 (.spikes_in(in_spk_00), .ack_in(hb_ack_00),
	.spike_out(hb_spk_00), .address(hb_addr_00), .acks_out(in_ack_00));
handler_block h_block01 (.spikes_in(in_spk_01), .ack_in(hb_ack_01),
	.spike_out(hb_spk_01), .address(hb_addr_01), .acks_out(in_ack_01));
handler_block h_block02 (.spikes_in(in_spk_02), .ack_in(hb_ack_02),
	.spike_out(hb_spk_02), .address(hb_addr_02), .acks_out(in_ack_02));
handler_block h_block03 (.spikes_in(in_spk_03), .ack_in(hb_ack_03),
	.spike_out(hb_spk_03), .address(hb_addr_03), .acks_out(in_ack_03));
handler_block h_block04 (.spikes_in(in_spk_04), .ack_in(hb_ack_04),
	.spike_out(hb_spk_04), .address(hb_addr_04), .acks_out(in_ack_04));
handler_block h_block05 (.spikes_in(in_spk_05), .ack_in(hb_ack_05),
	.spike_out(hb_spk_05), .address(hb_addr_05), .acks_out(in_ack_05));
handler_block h_block06 (.spikes_in(in_spk_06), .ack_in(hb_ack_06),
	.spike_out(hb_spk_06), .address(hb_addr_06), .acks_out(in_ack_06));
handler_block h_block07 (.spikes_in(in_spk_07), .ack_in(hb_ack_07),
	.spike_out(hb_spk_07), .address(hb_addr_07), .acks_out(in_ack_07));
handler_block h_block08 (.spikes_in(in_spk_08), .ack_in(hb_ack_08),
	.spike_out(hb_spk_08), .address(hb_addr_08), .acks_out(in_ack_08));
handler_block h_block09 (.spikes_in(in_spk_09), .ack_in(hb_ack_09),
	.spike_out(hb_spk_09), .address(hb_addr_09), .acks_out(in_ack_09));
handler_block h_block10 (.spikes_in(in_spk_10), .ack_in(hb_ack_10),
	.spike_out(hb_spk_10), .address(hb_addr_10), .acks_out(in_ack_10));
handler_block h_block11 (.spikes_in(in_spk_11), .ack_in(hb_ack_11),
	.spike_out(hb_spk_11), .address(hb_addr_11), .acks_out(in_ack_11));
handler_block h_block12 (.spikes_in(in_spk_12), .ack_in(hb_ack_12),
	.spike_out(hb_spk_12), .address(hb_addr_12), .acks_out(in_ack_12));
handler_block h_block13 (.spikes_in(in_spk_13), .ack_in(hb_ack_13),
	.spike_out(hb_spk_13), .address(hb_addr_13), .acks_out(in_ack_13));
handler_block h_block14 (.spikes_in(in_spk_14), .ack_in(hb_ack_14),
	.spike_out(hb_spk_14), .address(hb_addr_14), .acks_out(in_ack_14));
handler_block h_block15 (.spikes_in(in_spk_15), .ack_in(hb_ack_15),
	.spike_out(hb_spk_15), .address(hb_addr_15), .acks_out(in_ack_15));

wire [15:0] hb_spk;
assign hb_spk = {hb_spk_15, hb_spk_14, hb_spk_13, hb_spk_12,
	 hb_spk_11, hb_spk_10, hb_spk_09, hb_spk_08,
	 hb_spk_07, hb_spk_06, hb_spk_05, hb_spk_04,
	 hb_spk_03, hb_spk_02, hb_spk_01, hb_spk_00};

wire [15:0] hb_ack;
assign {hb_ack_15, hb_ack_14, hb_ack_13, hb_ack_12,
	hb_ack_11, hb_ack_10, hb_ack_09, hb_ack_08,
	hb_ack_07, hb_ack_06, hb_ack_05, hb_ack_04,
	hb_ack_03, hb_ack_02, hb_ack_01, hb_ack_00} = hb_ack;

wire hid_spk0, hid_spk1, hid_spk2, hid_spk3, hid_spk4, hid_spk5, hid_spk6, hid_spk7;
wire hid_ack0, hid_ack1, hid_ack2, hid_ack3, hid_ack4, hid_ack5, hid_ack6, hid_ack7;

wire [7:0] ctrl_addr;
hidden_controler hid_controler(.clk(clk), .resetn(resetn), .spikes_in(hb_spk),
	.acks_out(hb_ack), .addr_out(ctrl_addr), .spike_out(ctrl_spk),
	.addr_in00(hb_addr_00), .addr_in01(hb_addr_01), .addr_in02(hb_addr_02), .addr_in03(hb_addr_03),
	.addr_in04(hb_addr_04), .addr_in05(hb_addr_05), .addr_in06(hb_addr_06), .addr_in07(hb_addr_07),
	.addr_in08(hb_addr_08), .addr_in09(hb_addr_09), .addr_in10(hb_addr_10), .addr_in11(hb_addr_11),
	.addr_in12(hb_addr_12), .addr_in13(hb_addr_13), .addr_in14(hb_addr_14), .addr_in15(hb_addr_15));

hidden_neuron neuron_hid0(.spike_in(ctrl_spk), .addr_in(ctrl_addr),
  .clk(clk), .resetn(resetn), .spike_out(hid_spk0), .ack_in(hid_ack0), .timer_en(timer_en));
hidden_neuron neuron_hid1(.spike_in(ctrl_spk), .addr_in(ctrl_addr),
	.clk(clk), .resetn(resetn), .spike_out(hid_spk1), .ack_in(hid_ack1), .timer_en(timer_en));
hidden_neuron neuron_hid2(.spike_in(ctrl_spk), .addr_in(ctrl_addr),
	.clk(clk), .resetn(resetn), .spike_out(hid_spk2), .ack_in(hid_ack2), .timer_en(timer_en));
hidden_neuron neuron_hid3(.spike_in(ctrl_spk), .addr_in(ctrl_addr),
	.clk(clk), .resetn(resetn), .spike_out(hid_spk3), .ack_in(hid_ack3), .timer_en(timer_en));
hidden_neuron neuron_hid4(.spike_in(ctrl_spk), .addr_in(ctrl_addr),
	.clk(clk), .resetn(resetn), .spike_out(hid_spk4), .ack_in(hid_ack4), .timer_en(timer_en));
hidden_neuron neuron_hid5(.spike_in(ctrl_spk), .addr_in(ctrl_addr),
	.clk(clk), .resetn(resetn), .spike_out(hid_spk5), .ack_in(hid_ack5), .timer_en(timer_en));
hidden_neuron neuron_hid6(.spike_in(ctrl_spk), .addr_in(ctrl_addr),
	.clk(clk), .resetn(resetn), .spike_out(hid_spk6), .ack_in(hid_ack6), .timer_en(timer_en));
hidden_neuron neuron_hid7(.spike_in(ctrl_spk), .addr_in(ctrl_addr),
	.clk(clk), .resetn(resetn), .spike_out(hid_spk7), .ack_in(hid_ack7), .timer_en(timer_en));

wire [7:0] hid_spk;
assign hid_spk = {hid_spk7, hid_spk6, hid_spk5, hid_spk4, hid_spk3, hid_spk2, hid_spk1, hid_spk0};

wire [7:0] hid_ack;
assign {hid_ack7, hid_ack6, hid_ack5, hid_ack4, hid_ack3, hid_ack2, hid_ack1, hid_ack0} = hid_ack;

wire [2:0] out_ctrl_addr;
wire out_ctrl_spk;
output_controller out_controller(.spikes_in(hid_spk), .acks_out(hid_ack),
	.addr_out(out_ctrl_addr), .spike_out(out_ctrl_spk));

wire out_spk0, out_spk1, out_spk2, out_spk3, out_spk4, out_spk5;
output_neuron neuron_out0(.spike_in(out_ctrl_spk), .clk(clk), .resetn(resetn),
	.spike_out(out_spk0), .addr_in(out_ctrl_addr));
output_neuron neuron_out1(.spike_in(out_ctrl_spk), .clk(clk), .resetn(resetn),
	.spike_out(out_spk1), .addr_in(out_ctrl_addr));
output_neuron neuron_out2(.spike_in(out_ctrl_spk), .clk(clk), .resetn(resetn),
	.spike_out(out_spk2), .addr_in(out_ctrl_addr));
output_neuron neuron_out3(.spike_in(out_ctrl_spk), .clk(clk), .resetn(resetn),
	.spike_out(out_spk3), .addr_in(out_ctrl_addr));
output_neuron neuron_out4(.spike_in(out_ctrl_spk), .clk(clk), .resetn(resetn), 
	.spike_out(out_spk4), .addr_in(out_ctrl_addr));
output_neuron neuron_out5(.spike_in(out_ctrl_spk), .clk(clk), .resetn(resetn),
	.spike_out(out_spk5), .addr_in(out_ctrl_addr));

wire[5:0] out_spk;
assign out_spk = {out_spk5, out_spk4, out_spk3, out_spk2, out_spk1, out_spk0};

arbitrator arbit (.spikes_in(out_spk), .class_out(output_class), .no_spike(no_spike),
 .end_process(end_process), .resetn(resetn), .clk(clk), .timer_en(timer_en));

endmodule
