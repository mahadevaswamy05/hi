class data;
  string a;
  const int b=1;//global constant

  function new();
    a="team";
    b=20;
  endfunction:new

  function void display();
    $display("a=%0d,b=%0d",a,b);
  endfunction:display

endclass:data

module global_class;

data p1;
initial begin
  p1=new();
  $display(""); 
  p1.display();
//  p1.b=2;// invalid usage of b
/*  -------------------------------------------------------
  Here we assigned the b value in class properties using 'const' again we
  should not assign the value for 'b' even though we declared the values it throws the 
  errors.
  --------------------------------------------------------*/
 end endmodule
