// Code your testbench here
// or browse Examples
class array;
  rand bit [3:0] arr [2:0][3:0];
  
  constraint cons{
    foreach (arr[i])
      arr[i].sum() with (int'(item))==12;};
  
endclass

module rand_array;
  
  array a1;
  
  initial begin
    
    a1 = new();
    
    repeat(5)begin
      a1.randomize();
      $display("the rand of array = %0p",a1.arr);
    end
    
  end
  
endmodule
