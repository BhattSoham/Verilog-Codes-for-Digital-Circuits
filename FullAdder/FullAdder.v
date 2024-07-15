// Code your design here
module fulladder(
  input a,b,c,
  output s, cout);
  
  assign s = a ^ b ^ c;
  assign cout = (a & b) | (b & c) | (c & a);
  
endmodule
