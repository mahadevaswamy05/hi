
class name;
rand bit[1:0] myvar;
rand bit[2:0] myvar1;
bit[3:0] list[$];

constraint cycle{unique{myvar,myvar1,list};}

function void pre_randomize;
  if(list.size() ==10 ) list = {};
endfunction 
/*function void post_randomize;
  list.push_back(myvar);
  list.push_back(myvar1);
endfunction*/
endclass

module randc_fu();
 name n1; 
longint i ;
initial begin
   n1=new();
for(i=0;i<8;i++)
begin
  if(n1.randomize());
  $display("Sucessfull ::myVar1 = %0d , myVar = %0d",n1.myvar,n1.myvar1);
end
end
endmodule

