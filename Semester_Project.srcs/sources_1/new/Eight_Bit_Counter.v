`timescale 1ns / 1ps


module Eight_Bit_Counter(q, clk, reset);

input reset ,clk;
output [7:0]q; 


ripple_carry_counter inst0(q, clk, reset);
ripple_carry_counter inst1(q, clk, reset);





endmodule