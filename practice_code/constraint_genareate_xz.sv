
module top();

typedef enum{s0,s1,s2,s3}enum_d;
class swamy;
  rand enum_d a;
  logic b;

  function void post_randomize;
    case(a)
      s0 : b = '0;
      s1 : b = '1;
      s2 : b = 'x;
      s3 : b = 'z;
    endcase
  endfunction
endclass

initial begin
  swamy s1 = new;
  repeat(10) begin
  s1.randomize();
  $display("the output is:%0d",s1.b);
end
end
endmodule


