`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2021 02:17:40 PM
// Design Name: 
// Module Name: TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TOP(q, clock_in, reset);

output [3:0]q;
input clock_in;

input  reset;


Blinky Blinky_0(clock_in, clock_out);
ripple_carry_counter(q, clock_out, reset);

endmodule
