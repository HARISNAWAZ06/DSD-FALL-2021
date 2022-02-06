`timescale 1ns / 1ps

module PWM_Generator(Clock_in, Duty_cycle, PWM_out);

input Clock_in;
input [7:0]Duty_cycle;

output reg PWM_out;    

reg [7:0] Duty_counter = 0;

initial
    begin
    Duty_cycle = 0;
    PWM_out <= 1'b1;
    end

always@(posedge Clock_out)
begin
        Duty_counter <= Duty_counter + 1;
        if(Duty_counter == Duty_cycle)
            begin
            PWM_out <= 1'b0;
            end   
        else if(Duty_counter == 255 )
            PWM_out <= 1'b1;          
end

Clock_divider inst0(Clock_in, Clock_out);

endmodule
