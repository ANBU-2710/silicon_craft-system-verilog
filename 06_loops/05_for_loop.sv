module for_loop;
  
  initial begin
    
    for(int i = 0; i <= 5 ; i++)begin
      //here i is the local scope only means we can't use i out of for loop
      
      $display("i = %0d",i);
      $display();
    end
    
  end
  
endmodule


/*
i = 0
 
i = 1
 
i = 2
 
i = 3
 
i = 4
 
i = 5
*/
