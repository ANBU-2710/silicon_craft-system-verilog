class parent;
  int data;
  
  virtual function void display();
    $display("parent: the value of the data = %0d",data);
  endfunction
  
endclass
  
class child extends parent;
  int data;
    
  function void display();
    $display("child: the value of the data = %0d",data);
  endfunction
    
endclass

module virtual_keyword;
  initial begin
    
    parent p1;
    child c1;
  
    c1 = new();
    p1 = c1;
  
    c1.data = 10;
    p1.data = 20;
  
    p1.display();
    
  end
endmodule



/*
child: the value of the data = 10
*/
