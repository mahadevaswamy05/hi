//Write code for 11 22 33 44 55
class packet;
rand bit [3:0]a[10];

constraint c1{foreach (a[i])
                if(i%2==0)
                   a[i] == i/2+1;
                else if(i%2!=0)
                   a[i] == i/2+1; 
              }

function void display();
  $display("a=%0p",a);
endfunction
endclass

module tb();
  packet p1;
  initial begin
    p1=new();
    void'(p1.randomize());
    p1.display();
 end
endmodule

