module top;
 
//example of queue
bit [31:0] src[5] = '{1,2,3,4,5};
int j = 2;
int q1[$] = {1,2,3,4};
int q2[$] = {7,8};
bit [31:0]  q3[$];
//q3 = src;
initial begin
    q3 = src;
    foreach(q3[i])
      $display(q3[i]);
    end
endmodule
