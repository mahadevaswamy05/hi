class a;
  rand bit [4:0] varbl1;
  rand bit [1:0] varbl2;
  constraint c1 {varbl1 < 23; varbl1 > 19; varbl2 < 1;}
endclass

class b extends a;
  constraint c2 {varbl1 > 21;}
endclass

class c extends b;
  constraint cww  {varbl1 < 22; varbl2 > 2;}
endclass

module diffconstraints;
a aobj=new();
b bobj=new();
c cobj=new();
initial
begin
  repeat(5) begin
    if (aobj.randomize() == 1)
      $display("aobj.varbl1 = %0d, aobj.varbl2 = %0d\n", aobj.varbl1, aobj.varbl2);
      else
        $display("randomization of aobj FAILED\n");
        if (bobj.randomize() == 1)
          $display("bobj.varbl1 = %0d, bobj.varbl2 = %0d\n", bobj.varbl1, bobj.varbl2);
          else
            $display("randomization of bobj FAILED\n");
            if (cobj.randomize() == 1)
              $display("cobj.varbl1 = %0d, cobj.varbl2 = %0d\n", cobj.varbl1, cobj.varbl2);
              else
                $display("randomization of cobj FAILED\n");
              end
            end
            endmodule
