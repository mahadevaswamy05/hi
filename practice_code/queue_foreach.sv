module queue;
 int que[$];
 initial
 begin
  que = '{2,7,0,6,1,9,9,7};
  foreach(que[i])begin
  $display("verifying the values of each index, que[%0d] = %0d", i, que[i]);
  que.pop_back();
  end
  end
endmodule 

//Why only of the half elements will print
//The foreach loop calculates the number of iterations based on the original size of the queue.
//Inside the loop, you are using que.pop_back(), which removes the last element.
//After each iteration, the queue's size decreases by 1, but the foreach loop doesn't update its iteration count accordingly.
//As a result, by the time you get halfway through, the remaining elements have been removed from the queue.
// For fixing this you can use the for loop
/* for (int i = que.size()-1; i >= 0; i--) begin
      que.pop_back();
    end
*/
