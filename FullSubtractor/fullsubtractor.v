// Code your design here
module fullsubtractor(
  input a,b, bin,
  output d, bo);
  
  assign d = a ^ b ^ bin;
  assign bo = (!a & b) | (!(a ^ b)&bin);
  
endmodule
