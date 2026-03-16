class transaction;
  rand bit[3:0] a;
  
  constraint cons{ a dist{ 0 :/ 40, [2:4] :/ 60, 5 :/ 20 };};
  
endclass

module rand_dist;
 
  transaction tr;
  
  initial begin
    tr = new();
    
    repeat(20)begin
      tr.randomize();
      $display("the rand value of a = %0d",tr.a);
    end
    
  end
  
endmodule


/*
the rand value of a = 0
the rand value of a = 2
the rand value of a = 3
the rand value of a = 0
the rand value of a = 0
the rand value of a = 0
the rand value of a = 4
the rand value of a = 2
the rand value of a = 3
the rand value of a = 2
the rand value of a = 2
the rand value of a = 0
the rand value of a = 2
the rand value of a = 0
the rand value of a = 0
the rand value of a = 0
the rand value of a = 5
the rand value of a = 4
the rand value of a = 0
the rand value of a = 0
*/
