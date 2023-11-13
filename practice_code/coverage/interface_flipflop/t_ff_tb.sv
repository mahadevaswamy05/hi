module t_ff_tb(intf i);//

always @ (posedge i.clk)
begin
  i.t<=~i.t;
end
endmodule

