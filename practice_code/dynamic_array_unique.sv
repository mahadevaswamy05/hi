

class name;
rand bit [0:31] dy[];
constraint addr { dy.size() ==10;}
constraint addr1 {foreach(dy[i]) dy[i] inside {[0:10]};}
constraint addr2 {unique{dy};}
endclass

module tb;
name n1;
initial begin
  n1 = new();
void'(n1.randomize);
  repeat(1) begin
    $display("the value dynamic=%0p",n1.dy);;
  end
end
endmodule
