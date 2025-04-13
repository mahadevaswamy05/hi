/*logic [0:7] defines an 8-bit wide logic vector. size is from 0 to 255.
mem [0:4095] declares an array of 4096 elements (from index 0 to 4095). Each element is 8 bits wide.
memory calculation:
Number of elements = 4096
Size of each element = 8 bits = 1 byte
Total size in bytes = 4096 * 1 byte = 4096 bytes
To convert bytes to kilobytes (KB), we divide by 1024:
Total size in KB = 4096 bytes / 1024 = 4 KB
coverts bytes into bits 4096*8 = 32768 bits
*/

class packet;
  rand logic [0:7] mem [0:4095];
  function void display();
    foreach(mem[i]) begin
      $display("Mem[%0d]=[%0d]", i, mem[i]);
    end
      $display("Total memory size [%0d]",($high(mem)-$low(mem)+1*8));
  endfunction
endclass

module tb();
packet p1;
initial begin
  p1 = new();
  p1.randomize();
  p1.display();
end
endmodule
