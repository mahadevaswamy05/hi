//consider two variable x and y, write a constraint such that 
//
//x has value between 0 to 10
//if x is 0 y value should be 0 and if x is not 0 y should be x+1
class name;
  rand bit [0:3] x,y;
  constraint add_R { if (x==0) {y ==0;}
    else {y==x+1;}}
    endclass

    module tb;
    name n1;
    initial begin
      n1 = new();
      repeat(5) begin
        void'(n1.randomize);
        $display("the value of x=%0d,y=%0d",n1.x,n1.y);
      end
    end
    endmodule
