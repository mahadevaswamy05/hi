
class name;
  rand int addr;
  constraint a_ddr{ addr dist {5:=3,7:=5,1:=8};}
endclass 

module tb;
name n1;
initial begin
  n1 = new();
  repeat(10)
begin;
void'(n1.randomize());    
$display("addr=%0d",n1.addr);
 end 
 end
 endmodule
