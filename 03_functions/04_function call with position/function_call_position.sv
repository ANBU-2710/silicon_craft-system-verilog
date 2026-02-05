module function_call_positional;
  
  function int sum(input int a,b);
    $display("add the value of a and b by positional as arguement");
    return a+b;
  endfunction
  
  initial begin
    int result;
    
    //call the function by function name
    //function calling by positional arguement 
    
    result = sum(.b(10),.a(20));
    
    $display("the sum of a and b = %0d",result);
  end
endmodule


/*
# add the value of a and b by positional as arguement
# the sum of a and b = 30
*/
