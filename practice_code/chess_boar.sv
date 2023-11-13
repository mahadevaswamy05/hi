

module tb;

logic [2:0] x;
logic [2:0] y;
logic [2:0] xnew;
logic [2:0] ynew;

constraint addr {X!= xnew || y != ynew;
                xnew>= 0 && xnew<= 7;
                ynew>= 0 && ynew<= 7;
                abs(xnew - x) ==2 && abs(ynew -y) == 1;
                abs(xnew - x)
