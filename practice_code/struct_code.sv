module struct1;

struct{
  string name;
  bit[15:0] salary;
  byte id;
}employee_s; 


initial begin 

  employee_s = '{ "swamy",16897,123};

  $display("\n Unpacked structure example" );
  $display("\n structure name 'employee_s'");
  $display("\n employee_s = %p" ,employee_s); 
  $display("\n size of employee_s: %0d", $bits(employee_s));
end  
endmodule


