module function_call_display;
  
  function int sum(input int a,b);
    $display("add the values of a and b by calling funtion directly in display");
    return a+b;
  endfunction
  
  initial begin
     //call the funtion by function name
    //call the function directly inside the display statement instead of store the result
    
    $display("the sum of a and b = %0d",sum(20,20));
  end
endmodule

/*
add the values of a and b by calling funtion directly in display
the sum of a and b = 40
*/
