class swamy;
  virtual function void display();
  $display("parent");
endfunction 
endclass 

 class child extends swamy;
function void display();
$display("child");
endfunction
endclass 

        module tb;
        child c2;
        swamy c1;
        initial begin 
          c2=new();
          $cast(c1, c2);
          c1.display;
        end
        endmodule 


