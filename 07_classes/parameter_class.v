class transaction #(parameter width = 3, type d_type = bit[3:0]);
  bit[width-1:0] data;
  d_type id;
  
  function void display();
    $display("the value of data = %0d and id = %d",data,id);
  endfunction
  
endclass

module paramaeter_class;
  transaction tr1;
  transaction #(2,int)tr2;
  
  initial begin
    tr1 = new();
    tr2 = new();
    
    tr1.data = 7;
    tr1.id = 15;
    tr1.display();
    
    tr2.data = 7;
    tr2.id = 15;
    tr2.display();
    
  end
endmodule



/*
the value of data = 7 and id = 15
the value of data = 3 and id =          15   //here the data width and datatype has been changed
*/
