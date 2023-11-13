
//using the staring value to doing sort method and without using build method of sort
class packet;
  int a[$]={2,6,5,7,9,1,6,3};
  rand int b[$];
  int temp;

  constraint c1{ a.size==b.size;
  foreach(a[i]){b[i] == a[i]};}

function void post_randomize();
foreach(b[i])
  foreach(b[i])
  if(b[i] <= b[i+1]) begin
    temp = b[i+1];
    b[i+1] = b[i];
    b[i] = temp;
  end
$display("output is :%0p",b);

endfunction 

module p1;
packet c1_h;
initial begin
  c1_h = new();
  c1_h.randomize();
  c1_h.display();
end
endmodule
