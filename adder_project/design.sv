module fa(a,b,cin,sum,cout);
input a,b;
input cin;
output sum,cout;

assign sum = (a ^ b ^ cin);
assign cout = (a&b) | (b&cin) | (cin&a);

endmodule


module adder(a,b,cin,sum,cout,clk,rst);
input [3:0]a,b;
input cin;
output cout;
output [3:0]sum;
wire [2:0] c;
input rst,clk;
always @ (posedge clk & ~rst);

fa f1(a[0],b[0],cin,sum[0],c[0]);
fa f2(a[1],b[1],c[0],sum[1],c[1]);
fa f3(a[2],b[2],c[1],sum[2],c[2]);
fa f4(a[3],b[3],c[2],sum[3],cout);

endmodule

