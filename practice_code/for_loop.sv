
module fork_test;
initial begin

    fork
  for (int j=0; j<3; j++)
    begin
      $display(j);
    end
    join_none// output is 3
  //join_any //output is 0,1,2
  //join //output is 0,1,2

end
endmodule
