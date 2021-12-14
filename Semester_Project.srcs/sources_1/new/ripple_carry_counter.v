`timescale 1ns / 1ps

module ripple_carry_counter(q, clk, reset);

output [7:0] q;

input clk, reset;

T_FF tff0(q[0],clk, reset);
T_FF tff1(q[1],q[0], reset);
T_FF tff2(q[2],q[1], reset);
T_FF tff3(q[3],q[2], reset);
T_FF tff4(q[4],q[3], reset);
T_FF tff5(q[5],q[4], reset);
T_FF tff6(q[6],q[5], reset);
T_FF tff7(q[7],q[6], reset);



endmodule