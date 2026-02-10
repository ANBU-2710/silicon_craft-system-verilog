//declare the global task outside the module
task and_op(input bit[3:0] a,b,output bit[3:0] y);
  $display("entering to task");
  #5;
  y = a & b;
endtask//the global task can be call in multiple modules

module task_call;
  bit[3:0] var1,var2;
  bit[3:0] result;
  
  initial begin
    
    var1 = 4'b1011;
    var2 = 4'b1001;
    
    //call the global task
    and_op(var1,var2,result);
    
    $display("a= %0b | b = %0b | y = %0b",var1,var2,result);
    
  end
endmodule


/*
entering to task
a= 1011 | b = 1001 | y = 1001
*/
