// Code your testbench here
// or browse Examples
class transaction;
  
  randc bit [7:0] arr[];
  
  constraint array_size{ arr.size()>3 ; arr.size()<7;}
  constraint array_element{foreach(arr[i])
    arr[i] == i*i;};
endclass

module array_rand;
  
  transaction tr;
  
  initial begin
    tr = new();
    
    for(int i = 0; i <= 3; i++)begin
      void'(tr.randomize());
      $display("the rand elements and size of array = %p",tr.arr);
    end
    
  end
  
endmodule
