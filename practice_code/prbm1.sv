class Binary;
  rand bit [3:0] val1,val2;

  function new(input bit [3:0] val1,val2);
    this.val1 = val1;
    this.val2 = val2;
  endfunction

  virtual function void print_int(input int val );
  $display("val= %0d",val);
endfunction
endclass

class ExtBinary extends Binary;

  constraint c1{val1<10;val2<10;}
  function new(input bit [3:0]val1,val2);

    super.new(val1,val2);
  endfunction

  function int mul();
    int val;
    val = val1*val2;
    return val;
  endfunction

endclass
module tb;
//Binary e1;
initial begin
  ExtBinary e1= new(15,8);
  int val = e1.mul();
  e1.print_int(val);
  repeat(5) begin
    e1.randomize();
    $display("the value of val1 and var2 =%0d =%0d",e1.val1,e1.val2);
  end end
  endmodule
