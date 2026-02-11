module do_while;
  
  int count = 1;
  
  initial begin
    /* the value of ‘count’ incremented till the condition holds true. 
    But the condition is checked after a loop is executed.*/
    do begin
      $display("count = %0d",count);
      count++;
    end
      
    while(count<10);
    
  end
endmodule


/*
count = 1
count = 2
count = 3
count = 4
count = 5
count = 6
count = 7
count = 8
count = 9
*/
