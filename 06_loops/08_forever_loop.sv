module forever_loop;
  
  int count;
  
  initial begin
    /*The forever loop name itself says that it will run forever 
    i.e., throughout the simulation or forcefully shut down the forever loop.*/
    
    forever begin
      
      $display("%0t | count = %0d",$time,count);
      count++;
      #4;
    end
    
  end
    
    initial begin
      
      #40;
      $finish;
    end
    
endmodule


/*
0 | count = 0
4 | count = 1
8 | count = 2
12 | count = 3
16 | count = 4
20 | count = 5
24 | count = 6
28 | count = 7
32 | count = 8
36 | count = 9
Simulation complete via $finish(1) at time 40 NS + 0
./testbench.sv:23       $finish;
*/
