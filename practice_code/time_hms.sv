class Time;
  int hour,minute,second;

function void add(Time t2, Time t3);
  hour = t2.hour + t3.hour;
  minute = t2.minute + t3.minute;
  second = t2.second + t3.second;



  if (second >= 60) begin
    second = second - 60;
    minute = minute + 1;
  end



  if (minute >= 60) begin
    minute = minute - 60;
    hour = hour + 1;
  end
endfunction

endclass

module tb;
Time t1,t2,t3;
initial begin
  t1 = new();
  t2 = new();
  t3 = new();


  t2.hour=1;
  t2.minute=30;
  t2.second=20;

  t3.hour=1;
  t3.minute=10;
  t3.second=20;


t1.add(t2,t3);
  $display("t1: %02d:%02d:%02d", t1.hour, t1.minute, t1.second);
    end
    endmodule
