class silicon;
  int data;
  int id;
  
  function new();
    data = 10;
    id = 20;
  endfunction
  
  local function void display();
    $display("data = %0d | id = %0d",data,id);
  endfunction
  
endclass

module encapsulation_method;
  
  silicon s1;
  
  initial begin
    
  s1 = new();
  s1.display();
    
  end
endmodule



/*
s1.display();
           |
xmvlog: *E,CLSNLO (testbench.sv,25|11): Access to local member 'display' in class 'silicon' is not allowed here.
*/
