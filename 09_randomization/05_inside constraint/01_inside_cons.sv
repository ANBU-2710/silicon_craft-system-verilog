// Code your testbench here
// or browse Examples
class transaction;
  randc bit[7:0]a;
  randc bit[7:0]b;
  
  constraint inside_cons{ a inside{[0:9]};};
  
endclass

module inside_rand ;
  
  transaction tr;
  
  initial begin
    
    tr = new();
    
    repeat(10)begin
      tr.randomize();
      $display("the rand values of a = %0d | b = %0d",tr.a,tr.b);
    end
    
  end
  
endmodule


/*
the rand values of a = 3 | b = 233
the rand values of a = 4 | b = 66
the rand values of a = 7 | b = 61
the rand values of a = 8 | b = 248
the rand values of a = 6 | b = 243
the rand values of a = 9 | b = 62
the rand values of a = 2 | b = 64
the rand values of a = 5 | b = 247
the rand values of a = 1 | b = 65
the rand values of a = 0 | b = 144
*/
