//rand variable with array size 10,need to get unique values in each location without using unique keyword and for any of 2 locations we need to get same value?

class packet;

  rand bit [3:0] array[10];
   constraint a1{foreach(array[i])
   if(i>0)
     array[i]!=array[i-1];}
  endclass

module tb;
initial begin
  packet p1;
  p1 = new();
  repeat(10) begin
  p1.randomize();
  $display("array =%0p",p1.array);
end
end
endmodule

/*  constraint addr {foreach(array[i])
 { if(i>0)
    {if(i==4)
      array[i] == array[i-1];
      else
        array[i] >array[i-1];
      }}
    } */


