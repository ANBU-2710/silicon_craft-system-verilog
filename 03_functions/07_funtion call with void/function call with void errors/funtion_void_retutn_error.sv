module funtion_void_return;
  int result;
  function void sum( int a,b);
    $display("the function cannot be return the value");
    return a+b;
  endfunction
  
  initial begin 
    //int result;
    
    result = sum(10,20);
    $display("the sum of a and b = %d",result);
    
    //the function using void cannot return type 
    //it gives error 
  end 
endmodule

/*
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
    return a+b;
              |
xmvlog: *E,RETTHE (testbench.sv,7|14): The 'return' from task statement must not have a value expression [SystemVerilog].
*/
