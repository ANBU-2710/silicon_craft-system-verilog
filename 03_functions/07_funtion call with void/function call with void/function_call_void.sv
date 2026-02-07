module funtion_void_return;
  
  //int result;
  
  function void sum( input int a,b);
    a = a+b;
    $display("the function can sum the value internally it cannot be return outside the funtion");
  endfunction
  
  initial begin 
    //we can only call the function not return the value or any expression
    sum(10,20);
    $display("only can call the function but must not be return");
    
  end 
endmodule

/*
the function can sum the value internally it cannot be return outside the funtion
only can call the function but must not be return
*/
