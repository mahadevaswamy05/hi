//Method overloading is the practice of declaring the same method with different signatures(variables)

module tb;

function int two(int a,b);
int c;
c=a+b;
$display("the valeue a=%0d b=%0d c=%0d",a,b,c);
return (c);
    endfunction
    int x1,x2,x3,x4;
    initial begin
      x1=2;
      x2=3;
      x3=4;
      x4=5;
      two(x1,x2);
      two(x3,x4);
    end

    endmodule

