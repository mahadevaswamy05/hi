//The packet has two frames (length and payload). 
//   such that payload size and length have same value.
class packet;
  
  rand byte len;
  rand bit [7:0] payload [];
  constraint a1{ len inside {[10:20]};
                 payload.size ==len;}
  endclass

  module tb;

  packet p1;
  initial begin
    p1 = new();
    repeat(10) begin
      p1.randomize();
      $display("the payload output is :%p,len is :%d",p1.payload,p1.len);
    end end
    endmodule
