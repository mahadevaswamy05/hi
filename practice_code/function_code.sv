
module tb;
function int two(int a,b);
 int c;
 c=a%b;
 $display("the valeue a=&0d b=%0d c=%0d",a,b,c);
  return (c); 
endfunction 

initial begin
  two(2,3);
end

endmodule
