module simple_task;
  
  int a,b,y;
  
  task multiply(input int var1,var2, output int result);
    #5;//task can contain time delays
    result = var1*var2;
  endtask
  
  initial begin
    a = 10;
    b = 20;
    
    //call the task
    multiply(a,b,y);
    
    $display("time = %0t : a= %0d : b= %0d : y = %0d",$time,a,b,y);
  end
endmodule

/*
time = 5 : a= 10 : b= 20 : y = 200
*/
