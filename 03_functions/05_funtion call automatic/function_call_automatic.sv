module funtion_automatic;
   int result_static,result_auto,result_auto1;
  
  //by default without any keyword the function is satatic
  function int fact_static(int var_a);
    if(var_a >= 2)begin
      //perform recursive call of function
      result_static = fact_static(var_a-1)*var_a;
    end
    else
      result_static = 1;
    return result_static;
  endfunction
  
  //declare a automatic funtion
  //use "automatic" key word to declare a automatic function
  
  function automatic int fact_auto(int var_b);
    if(var_b >= 2)
      //for every function the separate memory can created for each call
      //the separate memory created beccause of auto function
      result_auto = fact_auto(var_b-1)*var_b;
    else
      result_auto =1;
    return result_auto;
  endfunction
  
  initial begin
    //int result_static,result_auto,result_auto1;
    
    //call the function by the function name
    //the new mem can created from here
    
    //call the static function
    result_static = fact_static(5);
    $display("fact_static = %0d",result_static);
    //call the automatioc function
    result_auto = fact_auto(5);
    $display("fact_auto = %0d",result_auto);
    //here the previous memory can updated
    result_auto1 = fact_auto(3);
    $display("fact_auto = %0d",result_auto);
  end
endmodule


/*
fact_static = 1
# fact_auto = 120
# fact_auto = 6
*/
