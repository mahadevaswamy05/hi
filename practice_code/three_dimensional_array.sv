
class packet;
  rand bit [4:0] array [][][];

  constraint a1{array.size() == 2;}
  foreach(array[i])
    {
      array[i].size() ==2;
      foreach(array[i][j])
        {
          array[i][j].size() ==2;
        }
      }
    }

    function void disp();
      foreach(array[i]) begin //{
        $display("name =%0d",i);
        foreach(array[,j]) begin //{
          foreach(array[,,k]) begin //{
            $write("",array[i][j][k]);
          end end end 

          //    $display("array[%0d][%0d][%0d] = %0d",i,j,k,array[i][j][k]);

        endfunction

      endclass


      module tb;

      initial begin //{
        packet p1;
        p1 = new();
        repeat(1) begin //{ 
        p1.randomize();
        p1.disp();
        //  $display("\t array [%0p]",p1.array);
      end end //} //}
      endmodule
