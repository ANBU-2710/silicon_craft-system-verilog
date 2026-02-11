module do_while_false;  
  int count = 2;
  initial begin
    do begin 
      count++;
      $display("Value of count = %0d", count);
      //count++;
    end
    while(count<1);//while the condition is not true the do while loop run at once and terminated the loop 
  end
endmodule

/*
Value of count = 3
*/
