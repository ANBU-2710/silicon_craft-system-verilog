module disable_work;
  
  initial begin
    
    fork 
      
      begin//block1
        $display("block 1 starts at time %t ",$time);
      
      	#5;
        $display("\nblock 1 executed at time %t ",$time);
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
        $display("\nblock 2 executed at time %t ",$time);
      end
      
    join_any
    
    disable fork;
      /*After the addition of the ‘disable fork’ statement, 
      processes B and C will get terminated immediately.*/
    
    //create a counter
    $display();
    for(int i =0;i<=7;i++)begin
      $display(" i = %d",i);
    end
    
    $display("\nfork join_any completed at time %t",$time);
    
  end
endmodule

/*
block 1 starts at time                    0 
block 2 starts at time                    0 
block 3 starts at time                    0 
block 4 starts at time                    0 

block 1 executed at time                    5 
 
 i =           0
 i =           1
 i =           2
 i =           3
 i =           4
 i =           5
 i =           6
 i =           7

fork join_any completed at time              5
*/
