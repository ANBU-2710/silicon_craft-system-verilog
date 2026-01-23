module sates_2;
  bit [3:0]bit_a;
  byte byte_a;
  shortint shortint_a;
  int int_a;
  longint longint_a;
  initial begin
    $display("default values : bit_a = %0b|byte_a = %0b|shortint_a = %0b|int_a =%0b|longint_a = %0b",bit_a,byte_a,shortint_a,int_a,longint_a);
    bit_a = 4'b1x1x;
    byte_a = 8'b10011001;
    shortint_a = 16'hfxfx;
    int_a = 32'hfxfx_fzfz;
    longint_a = 64'hffffzzzzffffxxxx;
    $display("after initialization: bit_a = %b|byte_a = %0d|shortint_a = %b|int_a =%b|longint_a = %b",bit_a,byte_a,shortint_a,int_a,longint_a);
  end
endmodule
