// Code your testbench here
// or browse Examples
class array;
  rand bit [3:0] arr [2:0][3:0];
  
endclass

module rand_array;
  
  array a1;
  
  initial begin
    
    a1 = new();
    
    repeat(5)begin
      a1.randomize();
      $display("the rand of array = %0p",a1.arr);
    end
    
  end
  
endmodule



/*
the rand of array = '{'{'h9, 'hc, 'h7, 'h3}, '{'hc, 'h4, 'h9, 'h3}, '{'h4, 'h6, 'h2, 'h9}} 
the rand of array = '{'{'hb, 'h0, 'ha, 'h2}, '{'h5, 'h1, 'ha, 'hd}, '{'hd, 'h4, 'h9, 'ha}} 
the rand of array = '{'{'ha, 'h6, 'h3, 'he}, '{'ha, 'h0, 'h9, 'hb}, '{'h4, 'h0, 'h1, 'hc}} 
the rand of array = '{'{'h7, 'h2, 'h9, 'h5}, '{'h0, 'h6, 'hc, 'h7}, '{'he, 'ha, 'h7, 'h1}} 
the rand of array = '{'{'h0, 'hc, 'h4, 'hc}, '{'h9, 'hf, 'he, 'h2}, '{'h8, 'h4, 'hf, 'hb}} 
*/
