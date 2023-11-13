//in the static constraint using the any class handle we can disable the constraint 
class packet;
rand  bit [7:0] addr;
static constraint a1{ addr == 5; }
endclass

module static_constr;
initial begin
  packet pkt1;
  packet pkt2;
  pkt1 = new();
  pkt2 = new();

  $display("Before disabling constraint");
  pkt1.randomize();
  $display("\tpkt1.addr = %0d",pkt1.addr);
  pkt2.randomize();
  $display("\tpkt2.addr = %0d",pkt2.addr);    

  pkt2.a1.constraint_mode(0);
  $display("After disabling constraint");
  repeat(2) begin
  pkt1.randomize();
  $display("\tpkt1.addr = %0d",pkt1.addr);
  pkt2.randomize();
  $display("\tpkt2.addr = %0d",pkt2.addr);     
end end
  endmodule

