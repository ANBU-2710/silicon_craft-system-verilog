module states_4;
  reg[3:0] reg_a;
  logic[3:0] logic_a;
  integer integer_a;
  time time_a;
  real real_a;
  initial begin
    //display the default values
    $display("reg_a = %b |logic_a = %b |integer_a = %0b|time = %0t| real_a = %0d",reg_a,logic_a,integer_a,time_a,real_a);
    //initialize the values
    #5;
    reg_a = 4'b10xx;
    logic_a = 4'b10xx;
    integer_a = 'hfx;
    time_a = $time;
    real_a = 1.01;
    $display("reg_a = %b  |logic_a = %b |integer_a = %0b|time = %0t| real_a = %f",reg_a,logic_a,integer_a,time_a,real_a);
    #10;
    $finish;
  end
endmodule
