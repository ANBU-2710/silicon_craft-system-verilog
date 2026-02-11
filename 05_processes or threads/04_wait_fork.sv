module wait_fork;
  
  initial begin
    
    fork 
      
      begin//block1
        $display("\nblock 1 starts at time %t ",$time);
      
      	#5;
        $display("block 1 executed at time %t ",$time);
      end
    
      begin//block2
        $display("block 2 starts at time %t ",$time);
      
        #15;
        $display("block 3 executed at time %t ",$time);
      end
      
      begin//block 3    
        $display("block 3 starts at time %t ",$time);
      
        #20;
        $display("block 4 executed at time %t ",$time);
      end
      
      begin//block4
        $display("block 4 starts at time %t ",$time);
      
        #10;
        $display("block 2 executed at time %t ",$time);
      end
      
    join_none
    
    /*In fork-join_none, all processes start simultaneously and join_none will not wait for any process to be completed.*/
    //so it can first complete the process outside the fork join_none
    
    //create a counter
    $display();
    for(int i =0;i<=7;i++)begin
      $display(" i = %d",i);
    end
   
    wait fork;
      
      /*After the addition of the wait fork statement,  
      statements after the ‘wait fork’ will be executed only after all forked process completion.*/
      
      $display();
      
      for(int  j=0;j<=7;j++)begin
        $display(" j = %d",j);
      end
    
      $display("\nfork join_any completed at time %t",$time);
    
  end
endmodule

/*
 i =           0
 i =           1
 i =           2
 i =           3
 i =           4
 i =           5
 i =           6
 i =           7

block 1 starts at time                    0 
block 2 starts at time                    0 
block 3 starts at time                    0 
block 4 starts at time                    0 
block 1 executed at time                    5 
block 2 executed at time                   10 
block 3 executed at time                   15 
block 4 executed at time                   20 
 
 j =           0
 j =           1
 j =           2
 j =           3
 j =           4
 j =           5
 j =           6
 j =           7
 */
