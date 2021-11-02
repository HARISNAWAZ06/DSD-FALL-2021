`timescale 1ns / 1ps


module Four_1_Mux(Out, S, D);

input [3:0]D;
input [1:0]S;
output Out;

not not0(S0, S[0]);
not not1(S1, S[1]);

and and0(W1, D[0], S0, S1);
and and1(W2, D[1], S0, S[1]);
and and2(W3, D[2], S[0], S1);
and and3(W4, D[3], S[0], S[1]);

or or1(Out, W1, W2, W3, W4);

endmodule
