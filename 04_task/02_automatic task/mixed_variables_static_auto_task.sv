module task_stat_auto;
  
  task static static_count();
    static int a;
    automatic int b;
    int c;
    
    a++;
    b++;
    c++;
    
    //$display("static count");
    $display("a = %0d | b= %0d | c = %0d" ,a,b,c);
    
  endtask
  
  task automatic auto_count();
    automatic int a;
    static int b;
    int c;
    
    a++;
    b++;
    c++;
    
    //$display("automatic count");
    $display("a = %0d | b= %0d | c = %0d" ,a,b,c);
    
  endtask
    
    task default_count();
      static int a;
      automatic int b;
      int c;
      
      a++;
      b++;
      c++;
      
      //$display("default count");
      $display("a = %0d | b= %0d | c = %0d" ,a,b,c);
    endtask
  
  initial begin
    //call static task
    $display("call the static task");
    for (int i=0;i<5;i++)begin
      static_count();
    end
    
    //call automatic task
    $display("call the automatic task");
    for (int i=0;i<5;i++)begin
      auto_count();
    end
    
    //call default task
    $display("call the default task");
    for (int i=0;i<5;i++)begin
      default_count();
    end
    
    
    
  end
endmodule


/*
call the static task
a = 1 | b= 1 | c = 1
a = 2 | b= 1 | c = 2
a = 3 | b= 1 | c = 3
a = 4 | b= 1 | c = 4
a = 5 | b= 1 | c = 5
call the automatic task
a = 1 | b= 1 | c = 1
a = 1 | b= 2 | c = 1
a = 1 | b= 3 | c = 1
a = 1 | b= 4 | c = 1
a = 1 | b= 5 | c = 1
call the default task
a = 1 | b= 1 | c = 1
a = 2 | b= 1 | c = 2
a = 3 | b= 1 | c = 3
a = 4 | b= 1 | c = 4
a = 5 | b= 1 | c = 5
*/
