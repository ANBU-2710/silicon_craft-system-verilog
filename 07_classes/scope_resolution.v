class scope_resolution;
  
  int data;
  static int id;
  
  static function void display(int id);
    $display("value of id = %0d",id);
  endfunction
  
  function void display_2(int id);
    $display("value of id = %0d",id);
  endfunction
  
endclass
module scope_resol_op;
  
initial begin
  
  scope_resolution::id = 10;
  scope_resolution::display(scope_resolution::id);
end
  
endmodule


/*
value of id = 10
*/
