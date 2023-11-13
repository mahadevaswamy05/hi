
class packet;
function int prime(int num);
  if(num<=1)
    return 0;
    for (int i =2;i<=num-1;i++) begin
      if(num % i ==0)
        return 0;
      end
      return 1;
    endfunction

    function int printprime(int n);
      int que[$];
      for (int i = 2; i<=n; i++) begin
        if(prime(i)) begin
          que.push_back(i);
        end
      end
      $display("prime number are =%p",que);
    endfunction
endclass

module tb;
packet p1;
initial begin
  p1 = new();

begin
  p1.printprime(13);
  $finish;
end end
endmodule
