`define fav_fruit `"apple`"     // in lrm - macros substitution shall not occur within the string literals.

`define how_much_kg 23

module mod;
string fruit;
int kg;

initial begin:start  
  fruit=`fav_fruit;
  kg=`how_much_kg;
  $display("My favourite fruit is %0s . Give me = %0d kg",fruit,kg);
end:start 

endmodule :mod


