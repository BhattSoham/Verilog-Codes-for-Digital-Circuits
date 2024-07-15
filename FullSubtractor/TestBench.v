// Code your testbench here
// or browse Examples
module testbench ;
  reg a,b, bin;
  wire d, bo;
  
  fullsubtractor fs (.a(a), .b(b), .bin(bin), .d(d), .bo(bo));
  
  initial begin
    $monitor("a = %b, b = %b, bin = %b, d = %b, bo = %b", a,b,bin,d,bo);
    $dumpvars;
    
    a = 0; b = 0; bin = 0;
    #5;
     a = 0; b = 0; bin = 1;
    #5;
     a = 0; b = 1; bin = 0;
    #5;
     a = 0; b = 1; bin = 1;
    #5;
     a = 1; b = 0; bin = 0;
    #5;
     a = 1; b = 0; bin = 1;
    #5;
     a = 1; b = 1; bin = 0;
    #5;
     a = 1; b = 1; bin = 1;
    #5; 
       
  end
endmodule
