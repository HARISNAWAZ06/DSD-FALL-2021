`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2021 01:22:35 PM
// Design Name: 
// Module Name: PWM_Generator
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


module PWM_Generator(PWM_Out, Compare, clk);

output reg PWM_Out;
input  clk ;
input  [7:0]Compare;
reg Reset;
    
always
    begin
    PWM_Out = 1;                   //always block
    if(Compare == q )
      begin                 //if
        PWM_Out = 0;
        while(q !=0)            
        begin               //while
         Reset <= 1;
         PWM_Out = ~PWM_Out;
        end                 //while
      end                   //if     
    end                     //always block
    

ripple_carry_counter inst0(q, clk, Reset);

endmodule
