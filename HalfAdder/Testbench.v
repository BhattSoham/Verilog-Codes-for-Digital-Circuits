// Code your testbench here
// or browse Examples
module testbench ;
  reg a,b;
  wire s, cout;
  
  halfadder ha (.a(a), .b(b), .s(s), .cout(cout));
  
  initial begin
    $monitor("a = %b, b = %b, s = %b, cout = %b", a,b,s,cout);
    $dumpvars;
    
    a = 0; b = 0;
    #5;
    a = 0; b = 1;
    #5;
    a = 1; b = 0;
    #5;
    a = 1; b = 1;
    #5;
  end
endmodule
