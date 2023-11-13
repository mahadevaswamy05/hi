module tb();
int v1=2,v2=3,v3;

function sumf();
  $display($time,"\t I'm in function");
  fork
  begin
    sum_t(v1,v2,v3);
    $display("\t we are calling inside the function");
    $display("v3:%d",v3);
  end
join_none
endfunction

task sum_t(input int a,b,output int c);
  #10 c=a+b;
endtask
initial
begin
  void'(sumf());
  //$display("v3:%d",sum_t.c);
end
endmodule
