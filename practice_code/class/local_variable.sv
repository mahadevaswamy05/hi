
class packet;
local int a;

function int name(int a);
this.a=a;
a=5;
$display("the value local variable is =%0d",a);
endfunction

function void display();//this second way to change the local variable values
  $display("the the value local variable form module is =%0d",a);
endfunction
endclass

module tb;
packet p1;
initial begin
 
p1 = new();
p1.name(50); 
p1.display();
end
endmodule
