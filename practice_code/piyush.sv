class packet;
  rand int a[];
  constraint c1 { a.size() inside {[4:20]};}
  constraint c2 {foreach (a[i]) {if(i%2==0)
   {a[i]==0;
}}
foreach(a[i])
  {if(i%2==1)
    {
      a[i]==(i+1)/2;
    }
  }


};
      
endclass

      module test;
     packet pkt;
      initial begin
       pkt = new;
       repeat(50) begin
       void'(pkt.randomize());
        $display(" a = %p", pkt.a);
      end
    end
      endmodule
