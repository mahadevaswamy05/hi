
program semaphore_ex;
  semaphore sembus=new(1);
  initial begin

    fork
      agent("agent 0",5);
      agent("agent 1",20);
    join
  end

  task automatic agent(string name,integer nwait);
    integer i=0;
    for(i=0;i<4;i++)
    begin
      sembus.get(1);
      $display("Time @[%0d] Lock sembus for %s",$time,name);
#(nwait);

      $display("Time @[%0d] release sembus for %s",$time,name);
sembus.put(1);
#(nwait);
end
endtask
endprogram

