module packed_1d;
  logic [2:0]array; //array declaration
  bit [15:0] array1;//array declaration
  
  initial begin
    array = 3'b101;//array assignments
    array1 = 16'h10fe;
    foreach(array[i])begin
      $display("data of array[%d] = %0b",i,array[i]);
    end
    foreach(array1[i])begin
      $display("data of array1[%0d] = %0b",i,array1[i]);
    end
  end
endmodule
