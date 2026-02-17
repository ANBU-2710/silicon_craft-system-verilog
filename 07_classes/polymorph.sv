class parent;
  
  int data;
  
  virtual function void display();
    
    $display("parent class: data = %0d",data);
  endfunction
  
endclass

class child_a extends parent;
  
  function void display();
    
    $display("child_a: data = %0d",data);
    
  endfunction
  
endclass

class child_b extends parent;
  
  function void display();
    
    $display("child_b : data = %0d",data);
    
  endfunction
  
endclass

class child_c extends parent;
  
  function void display();
    
    $display("child_b : data = %0d",data);
    
  endfunction
  
endclass


module polymorph;
  
  initial begin
    
    parent p_a, p_b, p_c;
    
    child_a ch_a;
    child_b ch_b;
    child_c ch_c;
    
    ch_a = new();
    ch_b = new();
    ch_c = new();
    
    ch_a.data = 10;
    
    ch_b.data = 20;
    
    ch_c.data = 30;
    
    p_a = ch_a;
    p_b = ch_b;
    p_c = ch_c;
    
    p_a.display();
    p_b.display();
    p_c.display();
    
    p_a.data = 40;
    ch_b.data = 50;
    p_c.data = 60;
    
    p_a.display();
    p_b.display();
    p_c.display();
    
  end
endmodule


/*
child_a: data = 10
child_b : data = 20
child_b : data = 30
child_a: data = 40
child_b : data = 50
child_b : data = 60

*/
