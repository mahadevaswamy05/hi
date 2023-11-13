

class name;
  real a;

  function new();
  repeat(10) begin
    a = $random;
  end
endfunction
  function void displayvalue();
  $display("Randomized value of a:%f",a);
endfunction

endclass
module tb;
name n1;
initial begin
  n1 = new();
  n1.displayvalue();
  end
endmodule

