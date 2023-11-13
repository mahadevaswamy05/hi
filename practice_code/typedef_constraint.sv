
class swamy;

  const bit [31:0] congest_addr=42;
  typedef enum {read, write,control}stm_e;
  randc stm_e kind;
  rand bit [31:0] len,src,dst;
  bit congestion_test;

  constraint a_drr {len<100;
  len>0;
  if(congestion_test){
    dst inside {[congest_addr-100:congest_addr+100]};
    src == congest_addr;
  }
  else 
    src inside {0,[2:10],[100:107]};
  }
endclass

module tb;
initial begin
  swamy s1;
  s1=new();
  repeat(5) begin
  void'(s1.randomize());
  $display("the value of the _addr=%0d,len=%0d,dst=%0d,src=%0d",s1.congest_addr,s1.dst,s1.src,s1.len);
end
end
endmodule
