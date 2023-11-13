/*the required bins for 2 integers X and Y,  follows the below requirement bins requirements are-
X==1 and Y>1
X==2 and Y>2
X==1 and Y==1
X>1 and Y==1 */

module tb;
bit [1:0] x,y;

covergroup c_name;
  c1: coverpoint x { bins x1 = {1};
  bins x2 = {2};}
  c2: coverpoint y { bins y1 = {1};
  bins y2 = {[2:$]};}

  cross c1,c2{
    bins xy1 = binsof(c1.x1) && binsof(c2.y2);
    bins xy2 = binsof(c1.x2) && binsof(c2.y2);
    bins xy3 = binsof(c1.x1) && binsof(c2.y1);
    bins xy4 = binsof(c1.x2) && binsof(c2.y1);}
  endgroup

  c_name cg = new();
  initial begin
    repeat(20) begin
      x = $random;
      y = $random;
      void'(cg.start());
      cg.set_inst_name("my_cg");
      $display("x=%0d, y=%0d %f ",x,y,cg.get_inst_coverage());
    end
  end
  endmodule
