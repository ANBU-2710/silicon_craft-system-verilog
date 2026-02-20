`include "fadd_interface.sv"
module fadd_tb;
  
  fa_if i_ff();
  
  fadd_top fadd_top_dut(i_ff);
  
  initial begin
    
    $monitor("time = %0t\t|a = %0b  | b = %0b | c_in = %0b | sum = %0b | c_out = %0b",$time,i_ff.tb.a,i_ff.tb.b,i_ff.tb.c_in,i_ff.tb.sum,i_ff.tb.c_out);
    
    repeat(10)begin
      
      i_ff.tb.a = $random ;
      i_ff.tb.b = $random;
      i_ff.tb.c_in = $random;
      #5;
    end
      
    //$finish;
    
    /*#5;
    
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
    */
  end
endmodule
    
