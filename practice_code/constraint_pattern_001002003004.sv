class packet;
  rand int pattern[];
  constraint pattern_c1{pattern.size inside {50};
                        foreach (pattern[i]){
                          if(i%3 == 2) 
                            pattern[i] == ((i/3) %9) +1;
                            else
                            pattern[i] == 0; 
                          }
                        }
endclass 

module tb;
packet p1;
initial begin
  p1 = new();
  p1.randomize();
  $display("the pattern %0p",p1.pattern);
end
endmodule

