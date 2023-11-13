
class name;
  rand int array[];
  constraint add_r{
    array.size inside {[2:15]};
    foreach (array[i])//logic
      if(i==0)
        array[i]==0;
        else if (i==1)
          array[i] == 1;
          else
            array[i] == array[i-1] + array[i-2];
        }

      endclass
      module top;
      name n1;
      initial begin
        n1 = new();

        void'(n1.randomize());
        $display("array=%p a=%0d",n1.array,n1.array.size);
      end
      endmodule




      /*
      module test;
      int f[];

      function int dy_fib(int i);
        f[0] = 0;
        f[1] = 1;
        for(int j = 2; j <= i; j++) begin
          f[j] = f[j-1] + f[j-2];
          $display("the output is %p",f);
        end
        dy_fib = f[i];
      endfunction: dy_fib

      function void series();
      static int num = 1;
       for (int i =0;i<10;i++) begin
         $display("%0d",num);
         num = num *2;
       end
      endfunction 

      initial begin
        dy_fib(5);

      end
      endmodule
     */ 
