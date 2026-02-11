module repeat_loop;
  
  initial begin
    
    /*This loop is used for repeating statements or operations
    for a fixed given number of times.*/
    
    repeat(5)begin
      $display();
      $display("no guts");
      $display("no glory");
    end
    
  end
  
endmodule

/*
no guts
no glory
 
no guts
no glory
 
no guts
no glory
 
no guts
no glory
 
no guts
no glory
*/
