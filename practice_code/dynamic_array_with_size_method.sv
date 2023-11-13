
//--------------------------------------------------------------------------------------------
//How-can-we-return-the-size-of-a-dynamic-array-without-using-array-methods-in-SV
//--------------------------------------------------------------------------------------------
module top;
int k;
int a[] = '{1,2,5,5,4,5,6,7,8};
bit clk;

always #5 clk =~clk;

initial begin
  foreach(a[i])
  begin
    $display("the in index :%0d the element is %0d",i,a[i]);
    k++;
  end
  $display("the size of the dynamic array is a[] is %d",k);
end

initial begin
$dumpfile("waveform.vcd");
$dumpvars();
end

initial begin
#20 $finish();
end
endmodule
