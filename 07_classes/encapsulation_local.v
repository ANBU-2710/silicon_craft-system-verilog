class silicon;
  int data;
  local int id;
  
  
  function  void display();
    $display("data = %0d || id = %0d", data,id);
  endfunction
  
endclass 

module encapsuation;
  
  silicon s1;
  
  initial begin
    
    s1 = new();
    
    s1.data = 10;
    s1.id = 20;
    s1.display();
    
  end
  
endmodule


/*
s1.id = 20;
        |
xmvlog: *E,CLSNLO (testbench.sv,23|8): Access to local member 'id' in class 'silicon' is not allowed here.
*/
