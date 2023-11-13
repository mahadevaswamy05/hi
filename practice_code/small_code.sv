
module tb;
class test_id;
  
  static int val=0;
  static function int inc_val(string objname);
  inc_val = ++val;
  $display("%s's val=%0d",objname,val);
endfunction
endclass

test_id handle1,handle2;
int v1,v2;
initial begin
v1=handle1.inc_val("handle1");
v2=handle2.inc_val("handle2");
end
endmodule
