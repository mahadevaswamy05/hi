// write a base calls name b and create a derived class d from the base class. write a function to calculate the odd parity  and display the in the base class and  derived class should override the function to calculate the even parity and display the value . the child class should be able to use both the function

class b;
 rand bit arr[]; 
constraint arr_c {arr.size() inside {[0:9]};}
constraint add_c1{foreach(arr[i])arr[i] inside {[0:1]};}

  function  automatic p_name(ref bit arr[]);
  bit parity = 0;
  foreach(arr[i])
    parity ^= arr[i];
    if(parity)
    $display("arr=%p",arr);
    $display("parity =%b",parity);
  endfunction
endclass

class d extends b;
 
function void p_name(ref bit arr[]);
  bit parity=0;
  foreach(arr[i])
    parity ^= arr[i];
    if(parity == 0)
    begin
    $display("arr=%p",arr);
    $display("parity =%b",parity);
    end
    else 
      super.p_name(arr);
  endfunction
endclass

module tb;
d d1;
initial begin
  d1 = new();
  repeat(10) begin
  d1.randomize();
d1.p_name(d1.arr);
end end
endmodule
