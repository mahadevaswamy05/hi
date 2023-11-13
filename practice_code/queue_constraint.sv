
//queueue array constraint


class name;
rand bit [3:0] queue[$];
constraint q{queue.size()==10;
            foreach(queue[i])
              queue.sum<15;}

endclass

module tb;
name n1;
initial begin
n1=new();
repeat(5) begin
void'(n1.randomize);
$display("value of queue=%0p",n1.queue);
end
end
endmodule
