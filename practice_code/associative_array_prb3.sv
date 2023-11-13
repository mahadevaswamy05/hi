
//write an associative array which is defined inside a function,and once the function execution is completed clear the array
module tb;

function void name();
int array[string];
string fruits;
  array= '{"apple":150,"orange":100,"banana":66};
$display("array=%p",array);
endfunction 

initial begin
name();
foreach(name.array[fruits])
  name.array[fruits]=0;
  $display("array%0p  %s",name.array , name.fruits);
$display("array=%0p",name.array);
end
endmodule
