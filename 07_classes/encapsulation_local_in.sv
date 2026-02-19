class silicon;
  int data ;
  local int id;
  
  function new();
    data = 10;
    id = 20;
  endfunction
  
  function void display();
    
    $display("data = %0d | id = %0d",data,id);
    
  endfunction
  
endclass

module encapsulation;
  silicon s1;
  
  initial begin
    
    s1 = new();
    s1.display();
    
  end
  
endmodule


/*
data = 10 | id = 20
*/
