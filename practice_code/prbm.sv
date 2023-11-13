
//Write a function to pass any number of data as an array and calculate the parity for different sizes of the array

class packet;
rand bit arr[];
rand int start_idx,end_idx;

constraint arr_c {arr.size() inside {[0:9]};
                  foreach(arr[i])
                  arr[i] inside {[0:1]};}

constraint add_array{(start_idx inside {[0:9]} && start_idx < end_idx);}

 constraint addr1 {end_idx <=arr.size();}
 constraint addr2 {solve arr.size before end_idx;}
 constraint addr3 {solve end_idx before start_idx;}

 function void parity (ref bit arr[]);
   bit parity = 0;
   foreach (arr[i])
     parity ^= arr[i];
     $display("arr=%p",arr);
     $display("parity =%p",parity);
 endfunction

 function void parity_index (ref bit arr[],int start, int endi);

   bit parity = 0;
   for(int i=start; i<endi;i++)  
   parity ^= arr[i];
     $display("specified index");
     $display("arr=%p",arr);
     $display("start=%0d end=%0d parity=%p",start,endi,parity);
 endfunction
endclass

module tb;
packet p1;
initial begin
  p1 = new();
  repeat(2) begin
    p1.randomize();
    p1.parity(p1.arr);
    p1.parity_index(p1.arr,p1.start_idx,p1.end_idx);
  end
end
endmodule
