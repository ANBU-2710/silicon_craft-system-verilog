class silicon;
  
  int data;
  int id;
  
  function new();
    data = 10;
    id = 20;
    display();
  endfunction
  
  function void display();
    $display("data = %0d | id = %0d",data,id);
  endfunction
  
endclass

module encaps_local;
  
  silicon s1;
  
  initial begin
    
    s1 = new();
    
  end
  
endmodule


/*
data = 10 | id = 20
*/
