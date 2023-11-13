
parameter PCIE_MAP_START = 32'h3000_1000;
parameter PCIE_MAP_END = 32'h3000_4000;
`define TB_MEMORY_MAP_PCIE_START PCIE_MAP_START
`define TB_MEMORY_MAP_PCIE_END PCIE_MAP_END

module test;
int check_value;
initial begin
  if(check_value >= `TB_MEMORY_MAP_PCIE_START &&
    check_value < `TB_MEMORY_MAP_PCIE_END) begin
    $display("Within the range");
  end
end
endmodule
