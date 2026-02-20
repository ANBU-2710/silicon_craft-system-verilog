module fulladder(input a,b,c_in, output sum,c_out);
  
  assign {c_out,sum} = a + b + c_in;
  
endmodule
