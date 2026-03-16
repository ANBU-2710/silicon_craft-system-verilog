// Code your testbench here
// or browse Examples
class array;
  rand bit [3:0] arr [2:0][3:0];
  
  constraint cons{
    foreach (arr[i])
      arr[i].sum() with (int'(item))==12;};
  
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
the rand of array = '{'{'h0, 'h1, 'h8, 'h3}, '{'h2, 'h1, 'h5, 'h4}, '{'h5, 'h1, 'h3, 'h3}} 
the rand of array = '{'{'h5, 'h5, 'h2, 'h0}, '{'h0, 'h0, 'h0, 'hc}, '{'ha, 'h2, 'h0, 'h0}} 
the rand of array = '{'{'h1, 'h3, 'h7, 'h1}, '{'h7, 'h0, 'h2, 'h3}, '{'h1, 'h3, 'h1, 'h7}} 
the rand of array = '{'{'h4, 'h3, 'h2, 'h3}, '{'h3, 'h1, 'h4, 'h4}, '{'h5, 'h0, 'h2, 'h5}} 
the rand of array = '{'{'h7, 'h0, 'h5, 'h0}, '{'h1, 'h7, 'h2, 'h2}, '{'h5, 'h1, 'h3, 'h3}}
*/
