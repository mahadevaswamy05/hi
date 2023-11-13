
module func_pass_by_val;

int result;
initial
begin
  result=sum(5 , );
  $display("\treturned from function and");
  $display("\tstored the value of sum in result");
  $display("\n\t@ %0t ns, value of sum is %0d",$time,result);
end
function int sum(input int var1,var2=1);
  $display("\n\tentered into function");
  return var1+var2;
endfunction : sum

endmodule : func_pass_by_val
