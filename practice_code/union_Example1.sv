
module tb();

union { int a;
        int b;}
        name_union;

initial begin
  name_union.a=10;
  name_union.b=20;
  $display("%0d",name_union.a);
end
endmodule
