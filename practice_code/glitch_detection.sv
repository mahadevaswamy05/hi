realtime duration=50ns; 
 property glitch_detection;
    realtime first_change;
   @(signal)  // Change in signal value (posedge and negedge)
     (1, first_change = $realtime) |=> (($realtime - first_change) >= duration); // It saves current time and also check the delay from previous edge
  endproperty
  ap_glitch_p: assert property(glitch_detection); 
