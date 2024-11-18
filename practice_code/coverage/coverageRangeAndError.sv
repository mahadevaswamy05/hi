
//Write a covergroup bins to get addr only between 2000 and 9000, If other address gets then it should throw error
class packet;
  rand int addr;
  covergroup cgrp @(addr);
    c1: coverpoint addr{bins b1 = {[2000:9000]};
                        illegal_bins b2 = default;// {[0:1999], [9001:12000]};
                       }
  endgroup: cgrp
  cgrp = new;
endclass
 
module tb;
  packet p1;
  initial begin
    p1=new;
    repeat(15) begin
      void'(p1.randomize() with {addr inside {[500:12000]};});
      p1.cgrp.sample();
      $display("addr=%0d\tcoverage=%.2f%%",p1.addr,p1.cgrp.get_inst_coverage);
     // if (p1.addr < 2000 || p1.addr > 9000)
     //  $error("Address %0d is out of the valid range [2000:9000]", p1.addr);
    end
    end
endmodule


















