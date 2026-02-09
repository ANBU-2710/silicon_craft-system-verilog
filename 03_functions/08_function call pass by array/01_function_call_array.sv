module function_call_array;
  int array[5];
  
  function automatic void func_array(ref int arr[5]);
    
    foreach(arr[i])begin
      arr[i] =  i + 1;
    end
    
  endfunction
  
  initial begin
    //cannot return the array from a function is not posssible so calling a funtion pass by reference
    
    func_array(array);
    $display("global variable array = %p",array);
  end
endmodule


/*
global variable array = '{1, 2, 3, 4, 5}
*/
