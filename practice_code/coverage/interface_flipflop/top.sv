module top(); //top

bit clk=0;

intf a1(clk); //intf name here we using 
t_ff_design a2(in);//f_ff_design module name
t_ff_tb a3(in);//t_ff_tb module name

always #5 clk=~clk; 

initial
begin
  in.t=0; 
  in.out=0;
  $monitor("\t\t[%0t]\tt:%0d\tout:%0d",$time,in.t,in.out);
  #90 $finish;
end

endmodule
