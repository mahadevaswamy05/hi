
module tb;
int a[]= '{0,1,2,8,9};
int b[]= '{5,6,7,8,9};

initial begin
  foreach(a[i]) begin 
    foreach(b[i]) begin
      if(a[i]== b[i])
        $display("both the array element are same \t",a[i],b[i]);
        else
          $display("both the array element are not same \t",a[i],b[i]);
        end
      end
    end
endmodule

    /*
    if(a[3:4] == b[3:4])
      $display("both the element are same a=%0p, b=%0p",a[3:4],b[3:4]);
      else
        $display("both the element are not same a=%0p, b=%0p",a[3:4],b[3:4]);
      end
      endmodule */
