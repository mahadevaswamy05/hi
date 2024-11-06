class packet;
  bit[14:0]temp;
  function automatic display(bit [14:0] temp);
  begin
    int i = temp; 
    for(i = 1; i <= temp; i*=2)
      $display("%0d",i);;
    end
  endfunction
endclass

module tb();
packet p1;
initial begin
  p1 = new();
  p1.display(1024);
end
endmodule

//This below function will check the weather the number is power of two or not
  /*function automatic display(bit [14:0] temp);
    begin
    if ((temp != 0) && ((temp & (temp - 1)) == 0)) begin
      $display("The value of 'temp' is a power of two");
    end else begin
      $display("The value of 'temp' is not a power of two");
    end
    end
  endfunction
  */
