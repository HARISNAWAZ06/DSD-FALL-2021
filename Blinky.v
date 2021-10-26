`timescale 1ns / 1ps


module Blinky (clock_in, clock_out);

 input clock_in; // System clock
 output [15:0]clock_out; // Low-frequency clock
 reg [31:0] counter_out; // register for storing values
 reg [15:0]clock_out; // register buffer for output port

 initial begin
 counter_out<=32'h00000000; // 0 in Hexadecimal format
 clock_out<=0;
 end
 //this always block runs on the fast 100MHz clock
 always @(posedge clock_in)
 begin
 counter_out<=counter_out + 32'h00000001; // Adding one at every clock pulse
 if (counter_out>32'd1000000000) //if count value reaches to 1000000000 for 10hz LED blinking //If count value reaches to 100000000 = 10^8
 begin
 counter_out<=32'h00000000; // reset the counter
 clock_out <= ~clock_out; // and invert the clock pulse level
 end
 end
 endmodule