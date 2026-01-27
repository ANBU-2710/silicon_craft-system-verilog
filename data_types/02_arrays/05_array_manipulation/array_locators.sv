module array_locators;
  string array[$] ='{"design","verification","manufacturing","silicon","craft","craft","vlsi"};
  string result[$];
  int result1[$];
  string temp;
  byte c;
  initial begin
    
    $display("display the ascii values for first character of each elements");
    foreach(array[i])begin
      c = array[i][0];
      $display("%s = %d",c,c);
    end
    
    //use "array.find with (<expression>)" to find the elements in the array that match the expression
    
    result = array.find(temp) with (temp == "craft");
    $display("array.find() :returns all the elements that match the 'temp == craft'");
    $display("result:%p",result);
    
    //use "array.find_index with (<expression>)" to find the element's indices in the array that match the expression
    
    result1 = array.find_index(temp) with (temp == "verification");
    $display("array.find_index() :returns all the element's indices that match the 'temp == verification'");
    $display("result: %p ",result1);
    
    //use "array.find_first with (<expression>)" to find the first element that match the expression
    
    result = array.find_first(temp) with (temp < "craft");
    $display("array.find_first() :returns the first element that match the 'temp < craft'");
    $display("result: %p ",result);//it will print empty array because no element is less than "craft"
    
    //use "array.find_first_index with (<expression>)" to find the first element's idices that match the expression
    
    result1 = array.find_first_index(temp) with (temp < "craft");
    $display("array.find_first_index() :returns the first element's indices that match the 'temp < craft'");
    $display("result: %p",result1);
    
    //use "array.find_last with (<expression>)" to find the last element that match the expression
    
    result = array.find_last(temp) with (temp > "manufacturing");
    $display("array.find_last(): returns the last element that match the 'temp > manufacturing'");
    $display("result :%p",result);
    
    //use "array.find_last_index with (<expression>)" to find the last element that match the expression
    
    result1 = array.find_last_index(temp) with (temp > "manufacturing");
    $display("array.find_last_index(): returns the last element's indices that match the 'temp > manufacturing'");
    $display("result :%p",result1);
    
    //use the"array.min()" that return the minimum valued element in the array
    
    result = array.min();
    $display("array.min():returns the element that have minimum value ");
    $display("result: %p",result);
    
    //use the"array.max()" that return the maximum valued element in the array
    
    result = array.max();
    $display("array.max():returns the element that have maximum value ");
    $display("result: %p",result);
    
    //use the "array.unique" the returns the unique elements in the array
    
    result = array.unique();
    $display("array.unique():returns the unique elements");
    $display("result: %p",result);
    
    //use the "array.unique_index" the returns the unique element's indices in the array
    
    result1 = array.unique_index();
    $display("array.unique_index():returns the unique elements");
    $display("result: %p",result1);
  end
endmodule

/*
# KERNEL: display the ascii values for first character of each elements
# KERNEL: d =  100
# KERNEL: v =  118
# KERNEL: m =  109
# KERNEL: s =  115
# KERNEL: c =   99
# KERNEL: c =   99
# KERNEL: v =  118
# KERNEL: array.find() :returns all the elements that match the 'temp == craft'
# KERNEL: result:'{"craft", "craft"}
# KERNEL: array.find_index() :returns all the element's indices that match the 'temp == verification'
# KERNEL: result: '{1} 
# KERNEL: array.find_first() :returns the first element that match the 'temp < craft'
# KERNEL: result: '{} 
# KERNEL: array.find_first_index() :returns the first element's indices that match the 'temp < craft'
# KERNEL: result: '{}
# KERNEL: array.find_last(): returns the last element that match the 'temp > manufacturing'
# KERNEL: result :'{"vlsi"}
# KERNEL: array.find_last_index(): returns the last element's indices that match the 'temp > manufacturing'
# KERNEL: result :'{6}
# KERNEL: array.min():returns the element that have minimum value 
# KERNEL: result: '{"craft"}
# KERNEL: array.max():returns the element that have maximum value 
# KERNEL: result: '{"vlsi"}
# KERNEL: array.unique():returns the unique elements
# KERNEL: result: '{"craft", "design", "manufacturing", "silicon", "verification", "vlsi"}
# KERNEL: array.unique_index():returns the unique elements
# KERNEL: result: '{4, 0, 2, 3, 1, 6}
*/
