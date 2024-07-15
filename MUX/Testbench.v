// Code your testbench here
// or browse Examples
module testbench ;
  reg sel, i0, i1;
  wire y;
  
  mux2to1 mux(.sel(sel), .i0(i0), .i1(i1), .y(y));
  
  initial begin
    $monitor("sel = %h, i0 = %h, i1 = %h, y = %h", sel, i0, i1, y);
    $dumpvars;
    i0 = 0; i1 = 1;
    sel = 0;
    #1;
    sel = 1;
    #1;
       
  end
endmodule
