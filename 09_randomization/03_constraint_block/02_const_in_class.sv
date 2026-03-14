class transaction;
  
  rand bit[2:0] a;
  
  constraint rand_a{a>4; a<6;};
  
endclass

module rand_const;
  
  transaction tr;
  
  initial begin
    tr = new();
    
    repeat(5)begin
      tr.randomize();
      $display("the rand value of a  =  %0d",tr.a);
    end
    
  end
  
endmodule


/*
the rand value of a  =  5
the rand value of a  =  5
the rand value of a  =  5
the rand value of a  =  5
the rand value of a  =  5
*/
