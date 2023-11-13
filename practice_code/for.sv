
program test;

  task print(int displayvar);
    $display("%0d", displayvar);
  endtask

  initial
  begin
    for(int i=0;i<5;i++)
    begin
      int j;
      j= i;
      fork
        print(j);
        // print(i); 
      join
    end
    wait fork;
  end
endprogram
