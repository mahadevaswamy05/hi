//constraint to generate min 2 -1's and Max 5-1's in that variable.
class packet;
  rand bit [7:0] b;
  rand bit [7:0] a;
endclass

module test;
 packet p1;
  initial begin
    p1 = new();
   repeat(10) begin
     force 
     if(p1.randomize(){ p1.a == 10;
                        p1.b == 20; })
    $display("a=%0b b= %0d",p1.a,p1.b);
    end
  end
  endmodule

