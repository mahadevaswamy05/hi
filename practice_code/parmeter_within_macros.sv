parameter PCIE_MAP_START = 32'h3000_1000;
parameter PCIE_MAP_END = 32'h3000_4000;
`define TB_MEMORY_MAP_PCIE_START PCIE_MAP_START
`define TB_MEMORY_MAP_PCIE_END PCIE_MAP_END

module test;
int a = 32'h3000_2000;
initial begin
  if(a >= `TB_MEMORY_MAP_PCIE_START &&
    a < `TB_MEMORY_MAP_PCIE_END) begin
    $display("a variable value is Within the Parameter range");
  end
end
endmodule
