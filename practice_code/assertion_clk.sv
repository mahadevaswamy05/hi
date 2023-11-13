//assertion for clock generator code

module test;
bit clk;
realtime clock_period = 10;

always #5 clk = ~clk;

property p(clock_period);  
  realtime current_time;
  @(posedge clk)
('1,current_time=$realtime) |=> (($realtime-current_time) == clock_period); 
endproperty

assert property(p(clock_period))
$display("pass");
else
  $display("fail");

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #100
    $finish;
  end
  endmodule

