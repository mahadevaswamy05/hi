//constraint for 7:0 addr, to generate only one bit is high


class c;
  rand bit [7:0] address;
  constraint ones {$onehot (address);}
endclass

module tb;
c c1;
initial begin
 c1 = new();
  repeat(20) begin
void'(c1.randomize);
$display("the address =%0b adrress=%0d",c1.address,c1.address);
end
end
endmodule
