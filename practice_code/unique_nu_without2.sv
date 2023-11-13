// Generate unique random values without using unique constraint and without using rand keyword

class w;
bit [3:0] a[10]; 
  
function void pre_randomize();
  a.shuffle();
endfunction

function new();
  for (int i =0; i<20; i++)
    a[i] = i;
  endfunction
endclass 


      module tb;
      w w1;
      initial begin
        w1= new();
        repeat(1) begin
          void'(w1.randomize);
          $display("element A=%0p",w1.a);
        end
      end
      endmodule
