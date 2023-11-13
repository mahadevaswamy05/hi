
class packet;

  function void reverse_char_of_array(string que1[$]);
    string que2[$];
    string temp;

    foreach(que1[i])
    begin
      temp = que1[i];
      que2.push_front(temp);
    end

    $display("array reversed =%p",que2);
  endfunction

endclass

module tb;

packet p1;

string que1[$];
initial begin
que1 = {"mahadeva","muttu","sagar","piyush","gopal"};
  p1 = new();
  p1.reverse_char_of_array(que1);
end
endmodule
