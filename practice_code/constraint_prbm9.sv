
//Write a constraint to generate a random value for a ver1 [7:0] within 50 and var2 [7:0] with the non repeated value in every randomization?

class packet;
  rand bit [7:0] var1;
  rand bit [7:0] var2[9];

  constraint a1{var1 inside {[0:50]};}

  constraint a2{
    foreach(var2[i])
                foreach(var2[j])
                 if(i!=j)
                 var2[i] != var2[j];}

    endclass

    module tb;
    packet p1;
    initial begin
      p1 = new();
      repeat(10) begin
        void'(p1.randomize());
        $display("var1:%0d var2:%p",p1.var1,p1.var2);
      end
    end
    endmodule
