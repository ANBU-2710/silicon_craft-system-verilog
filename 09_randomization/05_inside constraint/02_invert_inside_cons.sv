// Code your testbench here
// or browse Examples
class transaction;
  randc bit[7:0]a;
  randc bit[7:0]b;
  
  constraint inside_cons{ !(a inside{[0:240],[250:255]});};
  
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
the rand values of a = 244 | b = 233
the rand values of a = 245 | b = 66
the rand values of a = 242 | b = 61
the rand values of a = 246 | b = 248
the rand values of a = 249 | b = 243
the rand values of a = 247 | b = 62
the rand values of a = 243 | b = 64
the rand values of a = 248 | b = 247
the rand values of a = 241 | b = 65
the rand values of a = 242 | b = 144
*/
