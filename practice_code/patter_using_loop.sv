
//write the SV code for generating the pattern using loop
//


module tb;

initial begin
for(int i=0;i<5;i++)
  //$write("*");
  $display({i{"*"}});
end
endmodule
