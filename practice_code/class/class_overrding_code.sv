//class overdinf we will use same mwthods in the parent and child_class

class packet;
  function void display();
    $display("im Mahadevaswamy");
  endfunction 
endclass

class packet_c extends packet;
  function void display();
  $display("engineer");
  endfunction 
endclass

module tb;
packet_c c1;
initial begin 
c1 = new();
c1.display();
end
endmodule

