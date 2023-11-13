
class packet;
  rand logic a;
  rand logic b;

  function void post_randomize();
    b = $urandom_range(0,1);//  Assign a random value to b
    if (b)
      a = a ? 'x : 'z;  
      endfunction
    endclass
    
    module test;
    packet pkt;
    initial begin
      packet pkt = new;  
      repeat (15)
    begin
        pkt.randomize(); 
        $display(pkt.a); 
      end
    end
    endmodule
