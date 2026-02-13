class parent;
  int par_data;
  
  function void display_par();
    $display("the value of par_data = %0d",par_data);
  endfunction
  
endclass

class child_1 extends parent;
  int child_1_data;
  
  function void display_child_1();
    $display("the value of child_1_data = %0d",child_1_data);
  endfunction
  
endclass

class child_2 extends parent;
  int child_2_data;
  
  function void display_child_2();
    $display("the value of child_2_data = %0d",child_2_data);
  endfunction
  
endclass

class child_1a extends child_1;
  int child_1a_data;
  
  function void display_child_1a();
    $display("the value of child_1a_data = %0d",child_1a_data);
  endfunction
  
endclass

class child_1b extends child_1a;
  int child_1b_data;
  
  function void display_child_1b();
    $display("the value of child1_data = %0d",child_1b_data);
  endfunction
  
endclass

class child_1c extends child_1b;
  int child_1c_data;
  
  function void display_child_1c();
    $display("the value of child1_data = %0d",child_1c_data);
  endfunction
  
endclass

module multi_inheritance;
  
  initial begin
    
    child_1c ch_1c;
    child_2 ch_2;
   
    ch_1c = new();
    ch_2 = new();
    
    ch_1c.par_data = 10;//assign value for parent class
    
    //assign values for child class 1,1a,1b,1c in child class 1c
    ch_1c.child_1_data = 20;
    ch_1c.child_1a_data = 30;
    ch_1c.child_1b_data = 40;
    ch_1c.child_1c_data = 50;
    
    ch_2.par_data = 60;
    ch_2.child_2_data = 70;
    
    //call all the function
    
    ch_1c.display_par();
    ch_1c.display_child_1();
    ch_1c.display_child_1a();
    ch_1c.display_child_1b();
    ch_1c.display_child_1c();
    
    $display();
    
    ch_2.display_par();
    ch_2.display_child_2();
    
    //call the  parent class
    /*
    parent par_class;
    par_class = new();
    par_class.display_par();
    
    this is illegal parent class cannot be called */
    
    
  end
  
endmodule

/*
the value of par_data = 10
the value of child_1_data = 20
the value of child_1a_data = 30
the value of child1_data = 40
the value of child1_data = 50
 
the value of par_data = 60
the value of child_2_data = 70
*/
