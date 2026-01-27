module array_reduction;
  int array[$] = '{2,4,5,6,7,8};
  int result;
  initial begin
    $display("print the array elements");
    $display("array = %p",array);
    
    result = array.sum();
    $display("sum():sum of all elements in the array");
    $display("array = %d",result);
    
    result = array.product();
    $display("product():product of all elements in the array");
    $display("array = %d",result);
    
    result = array.and();
    $display("and():do bitwise and operation of all elements in the array");
    $display("array = %h",result);
    
    result= array.or();
    $display("or():do bitwise or operation of all elements in the array");
    $display("array = %h",result);
    
    result = array.xor();
    $display("xor():do bitwise xor operation of all elements in the array");
    $display("array = %h",result);
  end
endmodule

/*
# KERNEL: print the array elements
# KERNEL: array = '{2, 4, 5, 6, 7, 8}
# KERNEL: sum():sum of all elements in the array
# KERNEL: array =          32
# KERNEL: product():product of all elements in the array
# KERNEL: array =       13440
# KERNEL: and():do bitwise and operation of all elements in the array
# KERNEL: array = 00000000
# KERNEL: or():do bitwise or operation of all elements in the array
# KERNEL: array = 0000000f
# KERNEL: xor():do bitwise xor operation of all elements in the array
# KERNEL: array = 0000000a
*/
