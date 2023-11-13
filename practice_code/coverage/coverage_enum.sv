
module tb;

enum {Idle,Standy,Go1,Go2}states;
covergroup cg_FSM();
  coverpoint states{
    bins v1 [] = {Idle, Standy , Go1, Go2};
    bins v2 = (Idle => Go1 => Go2 => Idle),
    (Idle => Standy => Idle);
  }
endgroup

cg_FSM cg1;
initial begin
  cg1 = new();
  repeat(20) begin
    std::randomize(states);
    cg1.sample();
    $display("the value of enum %0p cov =%2.f%%",states,cg1.get_inst_coverage());
  end end
  endmodule


  
