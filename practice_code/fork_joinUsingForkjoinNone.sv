////implementing the fork join method using the fork join_none 
module tb;
int a= 10;
event e;

initial begin
  fork begin 
     $display ("1st_child,[%0d] %0d", $time,a);
  end

begin
   $display("2nd_child.[%0d] %0d", $time,a);
end

begin
 $display("3nd_child.[%0d] %0d", $time,a);
end
join_none

wait fork ;
  $display("[%0d]%0d  parent", $time,a);
end
endmodule

//Using the second methods
/*module tb;
int a= 10;
event e;

// wait(e.triggered);
initial begin
  fork begin 
     $display ("1st_child,[%0d] %0d", $time,a);
    -> e;
  end

begin
   $display("2nd_child.[%0d] %0d", $time,a);
  -> e;
end

begin
 $display("3nd_child.[%0d] %0d", $time,a);
  -> e;
end
join_none

wait(e.triggered);
  $display("[%0d]%0d  parent", $time,a);
end
endmodule
*/
