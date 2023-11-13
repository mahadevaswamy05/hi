//using fork join_any here output is all the child get exceuted then going to the parent display 
//becz here we using wait fork so it will wait upto all the child get exceuted then going to the parent. 

module main ; 
initial 
begin 
fork 

begin 
# (20); 
$display("Thread-1 time = %2d # 20 ",$time ); 
end 

begin 
#(10); 
$display("Thread-2 time = %2d # 10 ",$time ); 
end 

begin
 $display("Thread-3 time = %2d # 5 ",$time ); 
end 
  join_none

  $display("time = %2d Outside the main fork ",$time );
  //wait fork will do all the child thread to get excuted then going to the parent parent
  wait fork;

  $display(" parent time = %2d After the wait fork ",$time );
end 
endmodule
