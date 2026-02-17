class trans;
  bit [31:0] data;
  int id;

  extern function void display();
  extern task delay();
    
endclass

function void trans::display();
  $display("data = %0d : id = %0d", data, id);
endfunction
    
task trans::delay();
  #10;
  $display("Time = %0t : delayed data = %0d", $time, data);
endtask

module class_example;
  trans tr;
  
  initial begin
    tr = new();
   
    tr.data = 10;
    tr.id = 20;
    
    tr.display();
    tr.delay();
  end
endmodule
