module multi_combined;
  logic[4:0]array[2:0][3:0];
  initial begin 
    foreach(array[i,j])begin
      array[i][j] = $urandom_range(0,50);
    end
    $display("values of array = %p",array);
    foreach(array[i,j])begin
      $display("data of array[%0d][%0d] = %b",i,j,array[i][j]);
    end
  end
endmodule
