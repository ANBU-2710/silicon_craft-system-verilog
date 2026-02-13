class parent ;
  int data;
  
  function void display();
    $display("parent class:the value of data = %0d",data);
  endfunction
  
endclass

class child extends parent;
  int data ;
  
  function void display();
    super.data = 10;//point the parent class data even the variable name is same for both class 
    super.display();//point the parent class function even the variable name is same for both
    $display("chlid class:the value of data = %0d",data);
  endfunction
  
endclass

module super_keyword;
  
  initial begin
    
    child ch;
    ch = new();
    ch.data = 20;
    
    ch.display();
    
  end
endmodule

/*
parent class:the value of data = 10
chlid class:the value of data = 20
*/
