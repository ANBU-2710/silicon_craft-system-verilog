module function_call_variable;
  
  function int sum(input int a,b);
    $display("add the value of a and b by the call the variable");
    return a+b;
  endfunction
  
  initial begin
    int result,a,b;
    a = 30;
    b = 10;
    
    //call the function by funtion name
    //calling function by variable as a arguement
    
    result = sum(a,b);
    $display("result = %0d",result);
    
  end
endmodule

/*
add the value of a and b by the call the variable
result = 40
*/
