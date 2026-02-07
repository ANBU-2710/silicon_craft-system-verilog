module funtion_void_return;
  int result;
  function void sum( int a,b);
    $display("the function cannot be return the value");
    return ;
  endfunction
  
  initial begin
    
    result = sum(10,20);
    $display("the sum of a and b = %d",result);
    
    //the function using void cannot return type 
    //it gives error 
  end 
endmodule


/*
result = sum(10,20);
               |
xmvlog: *E,INVCTX (testbench.sv,13|15): The void function 'sum' cannot be used in this context.
*/
