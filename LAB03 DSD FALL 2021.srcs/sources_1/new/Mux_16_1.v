`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2021 01:23:16 AM
// Design Name: 
// Module Name: Mux_16_1
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


module Mux_16_1(Out_Main, SW, Data);

input [15:0]Data;
input [3:0]SW;
output  Out_Main;

wire [3:0]M;


Four_1_Mux inst0(M[0], SW[1:0], Data[3:0]);
Four_1_Mux inst1(M[1], SW[1:0], Data[7:4]);
Four_1_Mux inst2(M[2], SW[1:0], Data[11:8]);
Four_1_Mux inst3(M[3], SW[1:0], Data[15:12]);
Four_1_Mux inst4(Out_Main, SW[3:2], M[3:0]);


endmodule
