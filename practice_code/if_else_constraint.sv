

class name;
  rand bit [0:6] a,b;
constraint addr1 {a inside {[0:100],[101:$]};}
constraint addr2 {b inside {[0:20],[20:30],[30:$]};}

function void display();
if(b>=20&& b<=30&& a>50)
$display("the value of a=%0d and b=%0d",a,b);
else if(b>=0 && b<=20 && a>100)
  $display("the value of a=%0d and b=%0d",a,b);
  else if(b>=30 && a>=50)
  $display("the value of a=%0d and b=%0d",a,b);
  else if(a>0 && a<=100)
    $display("the value of a=%0d ",a);
endfunction
endclass

module tb;
    name n1;
    initial begin
      n1 = new();
      repeat(40) begin
        void'(n1.randomize()); 
        n1.display();
      end
    end
    endmodule

