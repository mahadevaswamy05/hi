class value;

//random variable declared using rand keyword
rand bit [3:0] s_array1[4];
rand bit [3:0] s_array2[5];


constraint cons {foreach(s_array1[i])
s_array1[i]==i;
foreach (s_array2[i])
  s_array2[i] == i;}

endclass


module top;


initial begin

  value val;

  val = new();
  void'(val.randomize());
  $display("\t s_array1=%0p" , val.s_array1);
  $display("\t s_array2=%0p" , val.s_array2);


end
endmodule

