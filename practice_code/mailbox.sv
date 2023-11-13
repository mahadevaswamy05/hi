module tb();
mailbox mb = new(3);

task automatic process_A();
  int a=20;
  int b=25;
  int value = 5;
  string name = "STRING";
  mb.put(value);
  $display("Put data = %0d", value);
  mb.put("STRING");
  $display("Put data = %s", name);
  mb.put(a);
  $display("put data = %0d",a);
 //here i'm putting another value to the mailbox abd but is 3 only we can stroes only 3 different value not more than that. 
  mb.put(b); //try_put
  $display("put data = %0d",b);
endtask

task process_B();
  int value;
  string name;
  mb.get(value);
  $display("Retrieved data = %0d", value);
  mb.get(name);
  $display("Retrieved data = %s", name);
endtask

initial begin
  fork
    process_A();
    process_B();
  join
end
endmodule
