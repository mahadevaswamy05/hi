module top();
typedef enum {red, green,blue,yellow,white,black} colors;
colors col;
initial begin
  $cast(col,2+3);
  $display("The enum data value is :%0p ", col);
 // $display( col);
end
endmodule
