//How can we use constraints to generate a dynamic array with random but with out using the unqiue method in the constraints

class packet;
  rand bit [6:0] k[];
  constraint a1{k.size()==20;}
  constraint a2{foreach(k[i])
                 foreach(k[j])
                  if(i!=j)
                      k[i] != k[j];}
endclass
module tb;
packet p1;
  initial begin
    p1 = new();
    repeat(10) begin
      void'(p1.randomize());
      $display("%0p",p1.k);
    end
  end
endmodule
