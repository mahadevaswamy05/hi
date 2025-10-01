
//Write the pattern like 1,22,3,44,5,66,7,88,7,66,5,44,3,22,1
//Index  0  1  2  3  4 5  6 7  8 9  10  11 12  13 14
//Values 1  22 3  44 5 66 7 88 7 66  5  44  3  22  1

//22 44 66 88 66 44 22
//i+1*(11) let's i= 1 then 1+1 = 2 then 2 *11 = 22 
//i = 3 then 3+1 = 4 then 4*11 = 44 

class packet;
  rand bit [7:0] array[15];
  constraint pattern_c {foreach(array[i])
                       { if((i%2 == 0) && i<8)  // Even index, first half
                            array[i] == i+1;
                         else if((i%2 == 1) && i<8) // Odd index, first half
                            array[i] == 11*(i+1);
                            else //Second half: mirror the first half
                            array[i] == array[14-i];}
                        }
                    
endclass

module tb();
packet p1;
initial begin
  p1 = new();
  p1.randomize();
  $display("Pattern values are :%0p",p1.array);
  end
  endmodule

