//if Class A had a method can display and class B is extended from class A and had the same method of display() how will you access the child and parent class method in different ways ? Write the code for the same 

class swamy;
  function void display();
    $display("im Mahadevaswamy");
  endfunction 
endclass

class mahadeva extends swamy;
  function void display();
    super.display();
  $display("engineer");
  endfunction 
endclass

module tb;
mahadeva m1;
initial begin 
m1 = new();
m1.display();
end
endmodule

/*
class name;
virtual function void display();
$display("parent A");
endfunction
endclass

class swamy extends name;
virtual function void display();
$display("child class");
endfunction
endclass

module tb;
name n1;
swamy s1;
initial begin
  n1 = new();
  s1 = new();
s1.display();
s1.super.display();
end
endmodule
*/
