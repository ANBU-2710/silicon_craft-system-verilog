module packed_3D;
  bit [2:0][2:0][3:0]array;
  int i,j;
  initial begin
    array = {3{4'd15,4'd10,4'd5}};
    foreach (array[i,j]) begin
      $display("array[%0d][%0d] = %0d" ,i,j, array[i][j]);
    end
    array[2] = {3{4'd6}};
    array[1] = {3{4'd7}};
    array[0] = {3{4'd6}};
    foreach (array[i,j,k]) begin
      $display("array[%0d][%0d][%0d] = %0d" ,i,j,k, array[i][j][k]);
    end
  end
endmodule
