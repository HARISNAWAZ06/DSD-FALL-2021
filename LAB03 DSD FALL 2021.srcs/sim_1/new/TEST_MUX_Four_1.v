`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2021 12:16:20 AM
// Design Name: 
// Module Name: TEST_MUX_Four_1
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


module TEST_MUX_Four_1();

reg [3:0]D;
reg [1:0]S;

wire  Out;


    initial
    begin
   
    
    # 100 D = 4'b0001; S = 2'b00;
    # 100 D = 4'b0010; S = 2'b10;
    # 100 D = 4'b0000; S = 2'b01;
    # 100 D = 4'b1000; S = 2'b11;
    #100
    $stop;
    end    
 
Four_1_Mux Inst0(Out, S, D); 
    
endmodule
