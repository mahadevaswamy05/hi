module t_ff_design(intf i); //module name is t_ff_design and we are using interface name is intf i;

  always @(i.clk)
    i.out<=i.t?(~i.out):(i.out); //

endmodule
