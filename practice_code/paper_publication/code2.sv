`ifndef M1
//`define M1

module tb;
int a;
initial begin
  $display("output ",a);
  $display("output:",`M1);
end
endmodule

`endif
