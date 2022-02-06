
module RGB_control(Clock_in, Duty_cycle, Red, Blue, Green);

input Clock_in;
input [7:0]Duty_cycle;

output reg [1:0]Red;
output reg [1:0]Blue;
output reg [1:0]Green;


PWM_Generator Red1(Clock_in, Duty_cycle, Red[0]);
PWM_Generator Red2(Clock_in, Duty_cycle, Red[1]);

PWM_Generator Blue1(Clock_in, Duty_cycle, Blue[0]);
PWM_Generator Blue2(Clock_in, Duty_cycle, Blue[1]);

PWM_Generator Green1(Clock_in, Duty_cycle, Green[0]);
PWM_Generator Green2(Clock_in, Duty_cycle, Green[1]);

endmodule
