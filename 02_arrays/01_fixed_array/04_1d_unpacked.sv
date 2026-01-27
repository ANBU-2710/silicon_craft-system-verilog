module unpacked_1d;
  byte array[5];
  byte array1[10];
  initial  begin
    array = '{1,2,3,4,5};
    foreach(array1[i])begin
      array1[i] = $urandom_range(5,50);
    end
    foreach(array[i])begin
      $display("data of array[%0d] = %d",i,array[i]);
    end
    $display("data of array1 = %p",array1);
    foreach(array1[i])begin
      $display("data of array1[%0d] = %d",i,array1[i]);
    end
  end
endmodule
