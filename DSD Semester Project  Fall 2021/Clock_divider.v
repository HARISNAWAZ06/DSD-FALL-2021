`timescale 1ns / 1ps

module Clock_divider(Clock_in, Clock_out);

input Clock_in;
output Clock_out;

integer Clock_tick_counter = 0;

always@(posedge Clock_in)
begin
 Clock_tick_counter <= Clock_tick_counter + 1; 
   
   if(Clock_tick_counter == 100000)    
       begin
       Clock_tick_counter <=0;
       Clock_out <= ~ Clock_out;
       end     
end

endmodule
