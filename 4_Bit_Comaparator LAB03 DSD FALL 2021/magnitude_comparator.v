`timescale 1ns / 1ps



module magnitude_comparator(Equal, Lesser, Greater, In1, In2 );

input [3:0]In1;
input [3:0]In2;

output reg Equal;
output reg Lesser;
output reg Greater;

always@(In1 or In2)
begin

    if(In1>In2)
    begin
    Greater = 1;
    Lesser = 0;
    Equal = 0;
    end
    
    else if (In1<In2)
    begin
    Greater = 0;
    Lesser = 1;
    Equal = 0;
    end
    
    else if(In1==In2)
    begin
    Greater = 0;
    Lesser = 0;
    Equal = 1;
    end    

end
endmodule
