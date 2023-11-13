class base; 
rand bit [1:0]var1; 
rand bit [3:0] var2; 
rand bit var3; 
constraint cnt1 {soft var1 inside {2,3}; 
                 (var1==2) -> (var2==0 && var3==0); }
constraint a_ddr{solve var1 before var2;} 
endclass

module tb; 
base obj; 
initial begin 
  obj=new(); 
  repeat(10) begin 
  obj.randomize(); 
  $display("var1=%d,var2=%d,var3=%d",obj.var1,obj.var2,obj.var3); 
end 
end
endmodule
