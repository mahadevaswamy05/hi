class packet;
rand bit [6:0] number;

function int prime(int num);
  if(num<=1)
    return 0;
    for (int i =2;i<=num-1;i++) begin
      if(num % i ==0)
        return 0;
      end
      return 1;
    endfunction

    function void printprime(int n);
      bit [6:0] que[];
      que = new[10];
      for (int i = 2; i<=n; i++) begin
        if(prime(i)) begin
          que = i;
        end
      end
      $display("prime number are =%p",que);
      $display("number of prime numbers = %0d",que.size());
    endfunction
  endclass

  module tb;
  packet p1;
  initial begin
    p1 = new();

  begin
    p1.randomize();
    p1.printprime(p1.number);
  end end
  endmodule

