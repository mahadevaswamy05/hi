
class packet;

  function string f_name(ref string a);
    string b = a;
    int length = b.len();
    for (int i = 0; i<length; i=i+1) begin
      b[i] = a[length - 1 -i];
    end
    $display("the reverse string is \n \t %s",b);
  endfunction
  endclass

module tb;
packet p1;
  string c = "Manipal";
initial begin
  p1 = new();
  p1.f_name(c);
end
endmodule
