`include "fadd_interface.sv"
module fadd_tb;
  
  fa_if i_f();
  
  fadd_top fadd_top_dut(i_f);
  
  initial begin
    
    $monitor("a = %0b  | b = %0b | c_in = %0b | sum = %0b | c_out = %0b",i_f.a,i_f.b,i_f.c_in,i_f.sum,i_f.c_out);
    
    i_f.a = 0 ;
    i_f.b = 0;
    i_f.c_in = 0;
    
    #5;
    
    i_f.a = 0 ;
    i_f.b = 0;
    i_f.c_in = 1;
    
    #5;
    
    i_f.a = 0 ;
    i_f.b = 1;
    i_f.c_in = 0;
    
    
    #5;
    
    i_f.a = 0 ;
    i_f.b = 1;
    i_f.c_in = 1;
    
    #5;
    
    
    i_f.a = 1 ;
    i_f.b = 0;
    i_f.c_in = 0;
    
    #5;
    
    i_f.a = 1 ;
    i_f.b = 0;
    i_f.c_in = 1;
    
    #5;
    
    i_f.a = 1 ;
    i_f.b = 1;
    i_f.c_in = 0;
    
    #5;
    
    i_f.a = 1 ;
    i_f.b = 1;
    i_f.c_in = 1;
    
    #5;
    
  end
endmodule
    
