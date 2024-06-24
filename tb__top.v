`timescale 1ns/1ns
module snn__tb;
    reg clk = 1;
    always @(clk)
      clk <= #500 ~clk;

    reg reset;
    wire end_process, no_spike;
    wire [1:0] output_class;
    reg [5:0] data_inputs [0:256*500-1];
    integer k, num;
    integer file;
    integer p_time, mean_time;

    initial
    begin
      file=$fopen("DataOut.txt", "w");
      num = 0;
      p_time = 0;
      mean_time = 0;
      $readmemh("hex_files/input_data.hex", data_inputs);
      for (k=0; k< 256; k= k+1) begin
        uut.in_period[k] <= data_inputs[k];
      end

      $readmemh("hex_files/ROM_hid0.hex", uut.neuron_hid0.ROM0.mem);
      $readmemh("hex_files/ROM_hid1.hex", uut.neuron_hid1.ROM0.mem);
      $readmemh("hex_files/ROM_hid2.hex", uut.neuron_hid2.ROM0.mem);
      $readmemh("hex_files/ROM_hid3.hex", uut.neuron_hid3.ROM0.mem);
      $readmemh("hex_files/ROM_hid4.hex", uut.neuron_hid4.ROM0.mem);
      $readmemh("hex_files/ROM_hid5.hex", uut.neuron_hid5.ROM0.mem);
      $readmemh("hex_files/ROM_hid6.hex", uut.neuron_hid6.ROM0.mem);
      $readmemh("hex_files/ROM_hid7.hex", uut.neuron_hid7.ROM0.mem);

      $readmemh("hex_files/ROM_out0.hex", uut.neuron_out0.ROM0.mem);
      $readmemh("hex_files/ROM_out1.hex", uut.neuron_out1.ROM0.mem);
      $readmemh("hex_files/ROM_out2.hex", uut.neuron_out2.ROM0.mem);
      $readmemh("hex_files/ROM_out3.hex", uut.neuron_out3.ROM0.mem);
      $readmemh("hex_files/ROM_out4.hex", uut.neuron_out4.ROM0.mem);
      $readmemh("hex_files/ROM_out5.hex", uut.neuron_out5.ROM0.mem);
    end

    initial begin
      reset = 1;
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      #1;
      reset = 0;
    end

    // integer k;
    // always @ ( uut.cnt_main.micro100 ) begin
    // for(k=0;k<10;k=k+1)
    // begin
    //   $display("%x - %d - %x - %x",uut.hb_spk, uut.hb_addr_01,
    //    uut.neuron_out0.IF0.membrane_potential, uut.out_spk);
    //   @(posedge clk);
    // end
    // end

    always @ ( posedge clk ) begin
      if(end_process == 1) begin
        $display("%d : %d,%b,\t%t", num, output_class, no_spike, $time - p_time);
	mean_time = mean_time +  $time - p_time;
	$display("%f" , mean_time/num);
	p_time = $time;
        $fwrite(file, "%d,%b\n",output_class, no_spike);
        reset = 1;
        num = num +1;
        if (num == 500)
          $finish;
        for (k=0; k< 256; k= k+1) begin
          uut.in_period[k] <= data_inputs[256*num + k];
        end
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        #1;
        reset = 0;
        // $display("%x \n", no_spike);
        // $stop;
      end
    end

    top uut (.clk(clk) , .resetn(reset), .output_class(output_class),
     .no_spike(no_spike), .end_process(end_process));
endmodule
