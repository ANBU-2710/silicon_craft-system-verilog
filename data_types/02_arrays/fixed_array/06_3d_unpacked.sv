module unpacked_2d;
  byte array[2][3][4];
  initial begin
    foreach(array[i,j,k])begin
      array[i][j][k] = $urandom_range(0,50);
    end
    $display("values of array = %p",array);
    foreach(array[i,j,k])begin
      $display("data of array[%0d][%0d][%0d] = %0d",i,j,k,array[i][j][k]);
    end
  end
endmodule
