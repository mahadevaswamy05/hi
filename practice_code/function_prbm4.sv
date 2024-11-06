module add_code;

task additional(input int a = 0, b = 0, output int c);
 #2  c = a +b ;
 $display("Inside the function variable Output a=%0d b=%0d c=%0d time %0t",a,b,c,$time);
endtask 

int x,y,z;
initial begin
  fork 
    #1 additional ( , 4,x);
    $display("time : %0t , x = %0d , y = %0d , z = %0d ", $time,x,y,z);
    #4 additional (2,3,y);
    #6 additional (3,5,z);
  join
end
  endmodule

