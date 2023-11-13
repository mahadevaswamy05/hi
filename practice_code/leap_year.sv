class packet;
  rand bit [10:0] year;
  constraint c1{
    year % 4 == 0;
    if (year % 100 == 0) {
      year % 400 == 0; 
    }
  }
endclass

module test;
packet p1;
initial begin
  p1 =new();
  repeat(5) begin
    p1.randomize();
    $display("leap_year=%0d",p1.year);
  end
end
endmodule
