`timescale 1ns / 1ps

module  PWM_Gen_TB();

reg clk;
reg [7:0]Compare;

wire PWM_Out;


PWM_Generator inst0(PWM_Out, Compare, clk);

initial
clk = 1'b0;

always
 #5 clk = ~clk;

initial
begin

    #00  Compare = 00;    
    #20  Compare = 200;
    #100 $finish;    
end


endmodule
