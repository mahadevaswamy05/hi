
program example;
  semaphore sembus = new(1);

  initial begin
    fork 
      agent("AGENT 0",5);
      agent("AGENT 1",20);
    join
  end

task automatic agent(string name, integer nwait);
    integer i =0 ;
    for(i=0; i<4;i++)

    begin
    sembus.get(1);
    $display($time,"Lock sembus For %s", name);
    #(nwait);
    $display($time,"Release sembus for %s", name);
    sembus.put(1);
    #(nwait);
  end
endtask
endprogram

