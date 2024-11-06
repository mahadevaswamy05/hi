
module tb();
bit [7:0] queue[$];

initial begin
queue = {0,1,2,3,4,5};
$display("The queue array element is :%0p",queue);
queue.insert(1,14);
$display("after the insert the element into the queue array :%0p",queue);
end
endmodule
