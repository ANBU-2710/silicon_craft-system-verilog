class parent;
  int par_data;
  
  function void display_par();
    $display("the value of par_data = %0d",par_data);
  endfunction
  
endclass

class child extends parent;
  int child_data;
  
  function void display_child();
    $display("the value of child_data = %0d",child_data);
  endfunction
endclass
  
module inheritance;
  
  initial begin
    
      
    child ch1;
    ch1 = new();
      
    ch1.par_data = 10;//assign the value for parent class variable by child class
    ch1.child_data = 20;
      
    ch1.display_par(); //call the parent calss function by child class 
    ch1.display_child();
      
    end
  
endmodule


/*
the value of par_data = 10
the value of child_data = 20
*/
