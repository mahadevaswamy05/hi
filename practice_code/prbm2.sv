//class packet function in such a wat to pass two arrays A and B each 32 bit  and concatenate every 4th bit interleavingly and store it in array c;
class packet;  
  rand bit [0:31] a[];
  rand bit [0:31] b[];
   bit [0:31] c[$];

  constraint addr{ a.size() == 22;
  foreach (a[i])
    a[i] inside {[1:10]};}
    constraint addr1{b.size() == 22;
    foreach (b[i])
      b[i] inside {[1:10]};}

function automatic f_name (ref bit [0:31] a[],ref bit [0:31] b[],ref bit [0:31] c[$]);
      begin
        foreach(a[i])
        if(i!=0 && i%4==0)
        c.push_back(a[i-1]);
        foreach(b[j])
        if(j!=0 && j%4==0)
        c.push_back(b[j-1]);
              $display("array c=%p",c);
            end
      endfunction
    endclass

    module tb;
    packet pkt;
    initial begin
      pkt = new();
      pkt.randomize();
      $display("array a =%p",pkt.a);
      $display("array  b=%p",pkt.b);
      pkt.f_name(pkt.a,pkt.b,pkt.c);
    end
      endmodule


