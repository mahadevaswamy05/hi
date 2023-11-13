//a semaphore is a bucket and When a semaphore is allocated, a bucket that contains a fixed number of keys is created. With help of semaphore method key can be gets or puts key into the bucket to the semaphore.
module top();
semaphore sema = new(4);  //Create semaphore with 1 key.

initial begin 
  repeat(1) begin 
  fork 
    //PROCESS 1  
  begin 
  $display("1: 1st process Waiting for key @time=%0t", $time); 
  sema.get(4); 
  $display("1: Got the Key @time=%0t", $time); 
  #(10);// Do some work 
  sema.put(2); 
  $display("1: Returning back key @time=%0t", $time); 
  #(10); 
  sema.put(2);
  $display("2: Returning second key @time =%0t", $time);
end


//PROCESS 2 
begin

  #1;
  $display("2: Waiting for Key @time=%0t", $time); 
  sema.try_get(2); 
  $display("2: Got the Key @time=%0t", $time); 
  #(10);//Do some work 
  sema.put(1); 
  $display("2: Returning back key @time=%0t", $time); 
  #(10); 
end 
join
end
#1000;
end
endmodule

