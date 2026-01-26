module associative_array;
  typedef enum{monday,tuesday,wednesday}days;
  bit[7:0] array_enum[days];
  bit[7:0] array_int[int];
  string array_string[string];
  int array_integer[*];
  initial begin
    array_enum[monday] = 10;
    array_enum[tuesday] = 20;
    array_enum[wednesday] = 30;
    foreach(array_enum[i])begin
      $display("array_enum[%0s] = %b",i.name(),array_enum[i]);
    end
    array_int[5] = 20;
    array_int[10] = 30;
    array_int[15] = 40;
    foreach(array_int[i])begin
      $display("array_int[%0d]= %d",i,array_int[i]);
    end
    array_string = '{"fruits":"mango","vegetables":"potato","name":"anbu"};
    foreach(array_string[i])begin
      $display("array_string[%0s]= %0s",i,array_string[i]);
    end
    $display("array_string = %p",array_string);
    array_integer = '{ 1 : 20 , 25 : 22 , 38 : 66};
    array_integer[10] = 5;
    array_integer[-5] = 10;
    array_integer[999] = 20;
    //foreach(array_integer[i])begin
      //$display("array_integer[%0d]= %b",i,array_integer[i]);
    //end
    $display("array_integer = %p",array_integer);
  end
endmodule
