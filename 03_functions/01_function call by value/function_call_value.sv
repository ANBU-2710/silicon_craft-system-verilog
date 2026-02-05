module function_call_value;
  
  function int sum(input int a,b);
    
    $display("add the values of a and b ");
    return a+b;
    
  endfunction
  
  initial begin
    
    int result;
    
    //call the function by the function name
    //function calling by value as arguement
    
    result = sum(10,20);
    $display("result = %0d",result);
    
  end
  
endmodule

/*
add the values of a and b 
result = 30
*/
