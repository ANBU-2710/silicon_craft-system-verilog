module nested_for;
  
  initial begin
    
    for(int i = 0; i<=3; i++)begin
      $display();
      //declare nested for loop
      for(int j = 0; j<=5;j++)begin
        $display("i=%0d | j=%0d",i,j);
      end
      
    end
    
  end
  
endmodule

/*
i=0 | j=0
i=0 | j=1
i=0 | j=2
i=0 | j=3
i=0 | j=4
i=0 | j=5
 
i=1 | j=0
i=1 | j=1
i=1 | j=2
i=1 | j=3
i=1 | j=4
i=1 | j=5
 
i=2 | j=0
i=2 | j=1
i=2 | j=2
i=2 | j=3
i=2 | j=4
i=2 | j=5
 
i=3 | j=0
i=3 | j=1
i=3 | j=2
i=3 | j=3
i=3 | j=4
i=3 | j=5
*/
