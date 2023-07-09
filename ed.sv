

module tb;


logic [31:0] a;
logic [31:0] b;
logic [63:0] c;

function automatic name();
  bit [31:0] i;
  const int j=3; 
 
 for(i=0;i<38;i=i+2)
  begin
    c[i] = {a[j:3],b[j:3]};
  end
endfunction

initial begin
  a = 32'hf0f0f0f0;
  b = 32'h0f0f0f0f;

  name();
  $display("c=%p",c);
end
endmodule

