module fork_join;
  
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
        $display("block 2 executed at time %t ",$time);
      end
      
    join
    
  end
endmodule


/*
block 1 starts at time                    0 
block 2 starts at time                    0 
block 3 starts at time                    0 
block 4 starts at time                    0 

block 1 executed at time                    5 
block 2 executed at time                   10 
block 3 executed at time                   15 
block 4 executed at time                   20
*/
