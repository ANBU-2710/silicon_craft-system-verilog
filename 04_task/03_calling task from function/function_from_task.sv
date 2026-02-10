module funct_task;
  
  function int sum(input int a,b);
    return a+b;
  endfunction
  
  task task_sum;
    int result;
    #1;
    $display("calling the function inside the task");
    result = sum(10,20);
    $display("result = %0d",result);
  endtask
  
  initial begin
    $display("call the task :inside the task that call the function");
    //calling the task
    task_sum(); 
    //the function inside the task will be executed
  end
endmodule


/*
calling the function inside the task
result = 30
*/
