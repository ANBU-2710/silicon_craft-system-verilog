class random_variables;
  rand logic[2:0]a;
  randc logic[2:0]b;;
endclass

module randomization;
  
  random_variables randvar;
  
  initial begin
    
    randvar = new();
    
    $display("---rand--randomize the values in non-cyclic form");
    for(int i=0;i<8;i++)begin
      randvar.randomize(a);
      $display("a = %b",randvar.a);
    end
    
    $display("---randc--randomize the values in cyclic form");
    for(int i=0;i<8;i++)begin
      randvar.randomize(b);
      $display("b = %b",randvar.b);
    end
    
  end
  
endmodule


/*
---rand--randomize the values in non-cyclic form
a = 001
a = 011
a = 010
a = 111
a = 000
a = 011
a = 010
a = 011
---randc--randomize the values in cyclic form
b = 010
b = 000
b = 001
b = 011
b = 111
b = 110
b = 100
b = 101
*/
