//Write a constraint to generate valid phone numbers
class packet;
  typedef enum bit [1:0] {emergency,local_num,international_num}num_type_e;
  rand num_type_e num_type;
  rand bit [34:0] a;
  constraint a1{num_type dist {emergency:=1,local_num:=5,international_num:=4};}
  constraint a2 {(num_type == emergency) -> a inside {911,108,100,101,112};
  (num_type == local_num) -> a inside {[35'd7_000_000_000:35'd999_999_9999]};
  (num_type == international_num) -> a inside {[35'd1_000_000_0000:35'd1_999_999_9999]};}
endclass

module tb;
packet p1;
initial begin 
  p1 = new();
  repeat(20) begin
    p1.randomize();
    $display("the phone number is =%0d",p1.a);
    $display(" p:%0p",p1.num_type);
  end end endmodule
