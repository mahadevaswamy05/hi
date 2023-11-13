//using dynamic array copying 2 array into a one array like c.

module name;
int a[];
int b[]; 
int c[$];

initial begin
  a = new[5];
  a ='{1,5,6,8,9};
  b = new[5];
  b = '{3,4,5,3,9};
 c={a,b};
  $display("the a array values is a=%p",a);
 $display("the a array values is b=%p",b);
$display("copying of the a array value and b array value into the c array %p ",c );
c =c.unique();

$display("unique array values of c array=%0p ",c);

end
endmodule


