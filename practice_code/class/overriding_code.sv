//here code id for overriding the methods

//As per my understanding method overriding happens when we declare a method in derived class with same signature(name)
class parent;

  virtual function void display();
  $display("i am in parent class");
endfunction
endclass

class child extends parent;

  function void display();
  $display("I am in child class");
endfunction

endclass

module test;
child c1;
parent p1;
initial begin
  c1 = new();
  p1 = new();
  p1.display();
  c1.display();
end
endmodule

