`timescale 1ns / 1ps

module RCC_Test_Bench();

reg clk;
reg reset;

wire [7:0] q;


ripple_carry_counter inst0(q, clk, reset);

initial
clk = 1'b0;

always
 #5 clk = ~clk;

initial
begin

        reset = 1'b1;
    #20 reset = 1'b0;

    #5160 $finish;    
end


endmodule
