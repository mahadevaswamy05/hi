module mod;
int x;
function int fun_1(int y );
  return y+1;
endfunction 

function int fun_2(int m=fun_1(y));
  int y;
 // y=0;
  y=m;
  return y;

endfunction 

initial begin 
  $display("fun_1 %0d",fun_1());
  $display(" fun_2 %0d", fun_2());
//  $display("fun_1 another value  %0d",fun_1(6));
//  $display(" fun_2 another value  %0d", fun_2());
end
endmodule 
