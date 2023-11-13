
module tb;
event ev;

initial begin
  fork 
#20 ->ev;
#10 @(ev);
//#10 wait(ev.triggered);
join
$display("done");
end
endmodule
