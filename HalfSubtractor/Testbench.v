// Code your testbench here
// or browse Examples
module testbench ;
  reg a,b;
  wire d, bo;
  
  halfsubtractor hs (.a(a), .b(b), .d(d), .bo(bo));
  
  initial begin
    $monitor("a = %b, b = %b, d = %b, b = %b", a,b,d,bo);
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
