module tb;

function  automatic name(ref int a[],b[],ref int en);
  if(en>5)
    $display("the value b=%0p",b);
    else
    $display("the value a=%0p",a);
  endfunction

  initial begin
  int a[],b[];
  int en;
  repeat(10) begin
  $random(en); 
  name(a,b,en);
  a={1,2,3,4,5};
  b={6,7,8,9,10};
end end
  endmodule

