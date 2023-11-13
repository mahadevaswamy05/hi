package pkg1;
  function void print;
    $display("comp1");
  endfunction : print
endpackage : pkg1

//--------- Compilation unit 2 ----------
//Contain only pkg2
package pkg2;
  function void print;
    $display("comp2");
  endfunction : print
endpackage : pkg2


//--------- Compilation unit 3 ----------
//Contain task->print, module mod3, mod2, mod1
//mod3 is instantiated in mod2.
//mod2 is instantiated in mod1.
//mod1 is not instantiated any where.
//So, mod1 is implicitly instantiated in $root.
function void print;
  $display("unit");
endfunction : print

module mod3();
function void print;
  $display("mod3");
endfunction : print
endmodule : mod3

module mod2();
mod3 mod1(); // same name as top-level module
function void print;
  $display("mod2");
endfunction : print
initial begin
  #5;
  $display($time," From initial block of module mod2");
  $root.mod1.print(); // prints "mod1"
  mod1.print();       // prints "mod3"
  pkg1::print();      // prints "comp1"
  pkg2::print();      // prints "comp2"
  $unit::print();     // prints "unit"
end
endmodule : mod2

module mod1(); // top-level module
mod2 m2();
function void print;
  $display("mod1");
endfunction : print
initial begin
  #1;
  $display($time," From initial block of module mod1");
  print();       //      prints "mod1"
  $root.mod1.print(); // prints "mod1"
  pkg1::print();      // prints "comp1"
  pkg2::print();      // prints "comp2"
  m2.print();         // prints "mod2"
  m2.mod1.print();    // prints "mod3"
  $unit::print();    // prints "unit"
end
endmodule : mod1
