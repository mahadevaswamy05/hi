
module tb;
event a,b,c;
function void calc_offset();
$display("functin output");
endfunction

initial begin
  fork begin
  #5;
    $display("a",$time);
  @a; 
 end

 begin
  #10; 
   $display("b",$time);
   @ b;
 end

 begin
   $display("c",$time);
  @ c;
 end

join_none
#8 calc_offset;
end 

endmodule
