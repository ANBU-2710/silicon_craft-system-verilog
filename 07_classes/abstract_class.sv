virtual class parent;
  int data;
  
  function void display();
    $display("the value pf the data",data);
  endfunction
  
endclass

module virtual_class;
  
  initial begin
    
    parent p1;
    p1 = new();
    
    p1.data = 10;
    p1.display();
    
  end
endmodule


/*
Error-[SV-ACCNBI] An abstract class cannot be instantiated
testbench.sv, 17
virtual_class, "p1 = new();"
  Instantiation of the object 'p1' can not be done because its type 'parent' 
  is an abstract base class.
  Perhaps there is a derived class that should be used
  */
