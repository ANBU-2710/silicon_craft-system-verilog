class transaction;
  
  rand bit[2:0] a;
  
  extern constraint rand_a;
  
endclass

constraint transaction::rand_a{a<6;};

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
the rand value of a  =  2
the rand value of a  =  5
the rand value of a  =  2
the rand value of a  =  4
the rand value of a  =  4
*/
