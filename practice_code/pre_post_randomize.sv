

class swamy;
  bit parity = 1'b0;
  rand bit [15:0] addr;
  rand bit [31:0] data = 32'b0;

  constraint a_ddr{addr[1:0] == 2'b0;}

  function void pre_randomize();
$display("\n the pre_randomize override function ");
    addr = 8'hef;
$display("\n pre_randomize addr=%0h, data=%0d, parity=%ob",addr,data,parity);
  endfunction 

  function void post_randomize();
 $display("\n in the post_randomize override function");
    parity =^data;
$display("\n post_randomize addr=%0h,data=%0d,parity=%0b",addr,data,parity);
  endfunction 
endclass

  module tb;
  swamy s1;
  initial begin
   s1=new();
    if(s1.randomize)
       $display("\n next statement after randomize function addr=%0h,data=%0d,parity =%0b",s1.addr,s1.data,s1.parity);
    else
      $display("\n next statement after randomize function: randomization failed");
    end
    endmodule 

