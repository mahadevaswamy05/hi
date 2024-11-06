module clock();
    reg clk;
initial begin
    clk = 0;
    forever 
         #5 clk = ~clk;
end    
initial begin 
        $monitor($time,,"clk=%b", clk);
        #100 $finish;
    end
endmodule

//vsim moduleName -l moduleName.log -c -do "log -r /*; run -all;quit" -wlf waveform.wlf
