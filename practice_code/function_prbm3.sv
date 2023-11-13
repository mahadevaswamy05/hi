
module tb;

function int sum(input int a,b,c,d);
  return a+b+c+d;
$display("the value a=%0d b=%0d c=%0d c=%0d",a,b,c,d);
endfunction


function int sum1(input int a,b,c,d,output int y1,y2);
   y1=a+b;
  y2=c+d;
endfunction

initial begin
int result;
int y1,y2;
  result = sum(1,2,3,4);
  sum1(2,2,4,4,y1,y2);
  $display("the sum of the all the variables=%0d",result);
  $display("the sum the a+b=%0d,c+b=%0d",y1,y2);
end
endmodule
