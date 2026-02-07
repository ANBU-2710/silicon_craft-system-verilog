module function_call_ref;
  
  int result,a,b;
  
  function int without_ref(input int var1,var2);
    //this function does not update the global value
    //swap the value using temporary varialble
    int temp;
    
    temp = var1;
    var1 =var2;
    var2 = temp;
    $display("the function with out reference does not not update the global varialble");
    $display("the local variable only updated ");
    $display("var1 = %0d : var2 = %0d",var1,var2);
    return 0;
  endfunction
  
  function automatic int with_ref(ref int var1,var2);
    //this function can update the global variable
    //swap the values
    int temp =var1;
    var1 = var2;
    var2 = temp;
    $display("the function with reference can update the global variable and local variable also updated");
    $display("var1 = %0d : var2 = %0d",var1,var2);
    return 1;
  endfunction
  
  initial begin
    
    a = 10;
    b = 20;
    
    //call the without reference function by the function name
    result = without_ref(a,b);
    $display("global variables a = %0d : b = %0d",a,b);
    
    //call the with reference function by the function name
    result = with_ref(a,b);
    $display("global variables a = %0d : b = %0d",a,b);
  end
endmodule

/*
the function without reference does not not update the global varialble
the local variable only updated 
var1 = 20 : var2 = 10
global variables a = 10 : b = 20
the function with reference can update the global variable and local variable also updated
var1 = 20 : var2 = 10
global variables a = 20 : b = 10
*/
