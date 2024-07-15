// Code your testbench here
// or browse Examples
module testbench ;
  reg a,b, c;
  wire s, cout;
  
  fulladder fa (.a(a), .b(b), .c(c), .s(s), .cout(cout));
  
  initial begin
    $monitor("a = %b, b = %b, c = %b, s = %b, cout = %b", a,b,c, s,cout);
    $dumpvars;
    
    a = 0; b = 0; c= 0 ;
    #5;
   a = 0; b = 0; c= 1 ;
    #5;
   a = 0; b = 1; c= 0 ;
    #5;
    a = 0; b = 1; c= 1 ;
    #5;
    a = 1; b = 0; c= 0 ;
    #5;
    a = 1; b = 0; c= 1 ;
    #5;
    a = 1; b = 1; c= 0 ;
    #5;
    a = 1; b = 1; c= 1 ;
    #5;
  end
endmodule
