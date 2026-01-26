module associative_methods;
   bit [7:0] array [int];
   int index;
  
  initial begin
    
    array = '{1:2,2:3,3:4,4:5,5:6,6:7};
    
    // Print array elements
    foreach (array[i])begin 
      $display("array[%0d] = %0d", i, array[i]);
    end
    
    // Print array size and number of entries
    $display("size = %0d, Number of entries = %0d of array", array.size(), array.num());   
    // exists method
    if(array.exists(5)) 
      $display("An element exists at index = 5");
    else 
      $display("An element doesn't exists at index = 5");
    
    if(array.exists(8)) 
      $display("An element exists at index = 8");
    else 
      $display("An element doesn't exists at index = 8");
    // first, last, prev, next method
    array.first(index);
    $display("First index of array = %0d", index);
    
    array.last(index);
    $display("Last index of array = %0d", index);
    
    index = 2;
    array.prev(index);  // Previous index of 6
    $display("Prev index of 2 is %0d", index);
    
    index = 2;
    array.next(index); // Next index of 10
    $display("Next index of 2 is %0d", index);
    
    // Delete particular index
    array.delete(5);
    
    // Print array elements
    $display("After deleting element having index 5");
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    
    // Delete complete array
    array.delete();
    $display("after deleting complete array");
    $display("size = %0d of array", array.size());
  end
endmodule
