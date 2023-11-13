
module enumeration;
typedef enum {red,blue,green}color_t;
color_t sig = blue;  //int(color_t) variable(sig) value(blue means 1);

initial begin
  $display("sig = ",sig);
  $display("sig using .name method ",sig.name);
  $display("sig using formatted =%s",sig);
end
endmodule
