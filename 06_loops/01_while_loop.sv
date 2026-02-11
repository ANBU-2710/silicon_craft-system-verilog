module while_loop;
  int count;
  
  initial begin;
    
    //the value of ‘count’ incremented till the condition holds true.
    while(count<8)begin
      $display("count = %0d",count);
      count++;
    end
    
  end
endmodule


/*
count = 0
count = 1
count = 2
count = 3
count = 4
count = 5
count = 6
count = 7
*/
