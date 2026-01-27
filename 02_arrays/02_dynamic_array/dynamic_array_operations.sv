module dynamic_array;
  int array[] = '{1,6,4,3,5};
  initial begin
    $display("size = %0d",array.size());
    array.reverse();
    $display(array);
    array.sort();
    $display(array);
    array.rsort();
    $display(array);
    array.shuffle();
    $display(array);
    array.delete();
    $display(array);
    $display("size = %0d",array.size());
  end
endmodule
