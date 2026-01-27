module array_ordering;
  int array[$] = '{2,5,6,4,8,4,4,2,1,9};
  initial begin
    
    $display("print the array elements");
    $display("array = %p",array);
    
    array.reverse();
    $display("reverse():return the elements in reverese order");
    $display("array = %p",array);
    
    array.sort();
    $display("sort():return the elemwnts in acsending order");
    $display("array = %p",array);
    
    array.rsort();
    $display("rsort():return the elements in decsending order");
    $display("array = %p",array);
    
    //use for loop to shuffle the array multiple times
    for(int i=0;i<4;i++)begin
      array.shuffle();
      $display("shufflr():shuffle the elements that change their indices for every shuffle");
      $display("array = %p",array);
    end
  end
endmodule


/*
# KERNEL: print the array elements
# KERNEL: array = '{2, 5, 6, 4, 8, 4, 4, 2, 1, 9}
# KERNEL: reverse():return the elements in reverese order
# KERNEL: array = '{9, 1, 2, 4, 4, 8, 4, 6, 5, 2}
# KERNEL: sort():return the elemwnts in acsending order
# KERNEL: array = '{1, 2, 2, 4, 4, 4, 5, 6, 8, 9}
# KERNEL: rsort():return the elements in decsending order
# KERNEL: array = '{9, 8, 6, 5, 4, 4, 4, 2, 2, 1}
# KERNEL: shuffle():shuffle the elements that change their indices for every shuffle
# KERNEL: array = '{2, 2, 9, 4, 5, 1, 6, 8, 4, 4}
# KERNEL: shuffle():shuffle the elements that change their indices for every shuffle
# KERNEL: array = '{2, 2, 4, 4, 1, 5, 6, 9, 8, 4}
# KERNEL: shuffle():shuffle the elements that change their indices for every shuffle
# KERNEL: array = '{4, 2, 6, 8, 4, 5, 4, 1, 9, 2}
# KERNEL: shuffle():shuffle the elements that change their indices for every shuffle
# KERNEL: array = '{4, 4, 2, 2, 1, 6, 4, 9, 8, 5}
*/
