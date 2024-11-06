module tb;

  bit clk,a,b,valid;
  always #5 clk = ~clk; //clock generation
  
  
  property p;
    @(posedge clk) valid |-> (a ##3 b);
  endproperty
  //calling assert property
  a_1: assert property(p)
    $info("pass");
    else
      $info("fail");
  initial begin
    valid=1; a=1; b=1;
    #15 a=1; b=0;
    #10 b=1;
    #12 b=0;
    #10 a=0; b=1;
    valid=0;
    #15 a=1; b=0;
    #100 $finish;
  end
 
/*      initial begin
        $dumpfile("waveform.vcd");
        $dumpvars();
      end
     */ 
endmodule

