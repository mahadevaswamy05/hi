
// Write a program to check if a given string is a palindrome.

module tb();
bit result;
string str;
function bit palindrome(string str);
int i;
for(int i=0; i<str.len()/2;i++) begin
  if(str[i] != str[str.len() -1 -i]) begin
    return 0;
 end
end
return 1;
endfunction
initial begin
  str = "madam";
  result = palindrome(str);
  if(result == 1) begin
  $display("The string is palindrome :%0s",str);
end
else  
  $display("The string is not palindrome are:%0s",str);
end
endmodule

