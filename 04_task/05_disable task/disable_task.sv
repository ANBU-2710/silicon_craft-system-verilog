module disable_task;
   task count_task;
     int i;
     
     for(i = 0;i<5;i++)begin
       #1;
       $display("count = %0d",i);
     endd
   endtask
  
  task disable_task;
    #3;
    disable count_task;//disable the task using disable keywor 
  endtask
  initial begin
    
    fork
      count_task();
      disable_task();
    join
  end
endmodule


/*
count = 0
count = 1
*/
