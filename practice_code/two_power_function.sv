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
