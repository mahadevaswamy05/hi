//The pay load size depends on data length. The data length can be parameterized globally. Write a constraint to equate payload size to the data length.

parameter data_length=10;
class packet;
  rand bit [4:0] pay_load[];

  constraint a1{pay_load.size()==data_length;}
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  p1.randomize();
  $display("the size of the payload is %0d",p1.pay_load.size);
end
endmodule

