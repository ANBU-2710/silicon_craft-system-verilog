module packed_2d;
  logic[2:0][3:0]array = 12'hdfe;//'{10,11,12};//array declaration and assignment
  initial begin
    foreach(array[i])begin
      $display("data of array[%0d] = %0d",i,array[i]);//print values by location
    end
    $display("data in array = %p",array);//print value of array
    foreach(array[i])begin
      foreach(array[i][j])begin
        $display("data of array[%0d][%0d] = %0d",i,j,array[i][j]);//print values bit by bit
      end
    end
  end
endmodule
