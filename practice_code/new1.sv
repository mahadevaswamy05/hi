module top;
   int fred[4][$] ='{'{1},'{12},'{4},'{8}};
   initial begin
     $display("The queue array is :%0p",fred);
      fred[2].push_back(77);
      $display("The push_back vaule is fred: %p",fred);
      fred[2].pop_back();
      $display("The pop_back vaule is fred: %p",fred);
   end
endmodule
