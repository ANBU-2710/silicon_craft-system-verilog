module unpacked_2d;
  byte array[2][3];
  initial begin
    foreach(array[i,j])begin
      array[i][j] = $urandom_range(0,50);
    end
    $display("values of array = %p",array);
    foreach(array[i,j])begin
      $display("data of array[%0d][%0d] = %0d",i,j,array[i][j]);
    end
  end
endmodule
