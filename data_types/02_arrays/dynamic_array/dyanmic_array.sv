module dynamic_array;
  int array[];
  initial begin
    array = new[8];
    array = '{1,2,3,4,5,6,7,8};
    $display("size of array = %0d",array.size());
    foreach (array[i])begin
      $display("array[%0d] = %0d",i,array[i]);
    end
    //Resizing of an array and copy old array content
    array = new[10](array);
    $display("size of array = %0d",array.size());
    $display("values of array after resizing = %p",array);
    //add new values with old values
    array[8:9] = '{9,10};
    //display the array values
    $display("values of array after added the new value:array = %p",array);
    //display the out of bound that print the default values
    $display("out of bound array[12] = %0d",array[12]);
	//Override existing array: Previous array elememt values will be lost
    array = new[8];
    $display("size of array = %0d",array.size( ));
    foreach (array[i])begin
      $display("array[%0d] = %0d",i,array[i]);
    end
    //delete the array
    array.delete();
    $display("size of array after deleting = %0d",array.size( ));
  end
endmodule
