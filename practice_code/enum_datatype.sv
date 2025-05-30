module tb;

enum {MONDAY=8,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY=5,SUNDAY }days;
initial begin
  $display("\n days = {\n MONDAY,\n TUESDAY,\n WEDNESDAY,\n THURSDAY,\n FRIDAY,\n SATURDAY,\n SUNDAY\n }");
  days = days.first; 
  $display("");   
  for(int i=0;i<7;i++) begin
    $display("Days name = %0s  and its default value is = %0d",days.name,days);
    days = days.next;  
  end
  $display("");
  $display("Days name = %0s and its default value is = %0d",days.name,days);
end

endmodule 

