//The scope resolution operator is used to refer a static class member without its handle.
//Using the Score operator you can call only a static function 
class transaction;
  bit [31:0] data;
  static int id;
  
  static function disp(int id);
    $display("disp Value of id = %0h", id);
  endfunction
  
  function auto_disp(int id);
    $display("auto_disp Value of id = %0h", id);
  endfunction
endclass

module example;
transaction t1;
  initial begin
   t1 = new();
   transaction::id = 5;
   transaction::disp(transaction::id);
   
    t1.auto_disp(3);
  //transaction::data = 2; // illegal
  //transaction::auto_disp(transaction::id); // illegal
  end
endmodule
