module foreach_loop;
  
  int array[];
 
  
  initial begin
    
    array =new[5];
    array = '{10,20,30,40,50};
    
    //This loop is an upgraded version of for loop for traversing through each element of an array. 
    //This iterates through index 0 till the size of an array mentioned.
    foreach(array[i])begin
      $display("array[%0d] = %0d",i,array[i]);
    end
    
  end
endmodule



/*
array[0] = 10
array[1] = 20
array[2] = 30
array[3] = 40
array[4] = 50
*/
