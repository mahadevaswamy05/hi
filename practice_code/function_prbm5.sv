class abc;
  function int sorting(input bit[7:0] a[10]);
    bit[7:0] temp;
    $display("Size is :%0d",$size(a));
    for(int i=0;i<$size(a);i=i+1) begin
      for(int j=i+1; j<$size(a);j=j+1) begin
        if(a[i]<a[j]) begin
          temp=a[i];
          a[i]=a[j];
          a[j]=temp;
        end
     end
    end
    $display("a=%p",a);
    $display("max num=%0d second max num=%0d",a[0],a[1]);
  endfunction
endclass

module tb;
  abc a1;
  bit[7:0] k[10];
  initial begin
    a1=new;
    foreach(k[i]) begin
      k[i]=$urandom;
    end
    a1.sorting(k);
  end
endmodule
