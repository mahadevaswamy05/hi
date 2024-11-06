module tb();
mailbox mb = new(3);

task automatic process_A();
  int a=20;
  int b=25;
  int value = 5;
  string name = "STRING";
  mb.put(value);
  $display("Put data = %0d", value);
  mb.put("HAI");
  $display("Put data = %s", name);
  mb.put(a);
  $display("put data = %0d",a);
 //here i'm putting another value to the mailbox abd but is 3 only we can stroes only 3 different value not more than that. 
  mb.put("Hello"); //try_put
  $display("put data = %s",name);
endtask

task process_B();
  int value;
  string name;
  mb.get(value);
  $display("Retrieved the 1st data :%0d", value);
  mb.get(name);
  $display("Retrieved the 2nd data :%s", name);
  mb.get(value);
  $display("Retrived the 3rd data = %0d", value);
  mb.try_get(name);
  $display("Retrieved the 4th Time = %s", name);
endtask

initial begin
  fork
    process_A();
    process_B();
  join
end
endmodule
