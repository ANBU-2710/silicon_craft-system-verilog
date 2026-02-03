module structure_packed;
  typedef struct packed{bit[3:0] experience;
                        byte id;
                        logic[16:0] salary;
                       }employee;
  initial begin
    employee e1,e2;
    e1 = '{'d0,'d60,'d30000};
    $display("e1 = %p",e1);
    e2.experience = 'd2;
    e2.id = 'd60;
    e2.salary = 'd50000;
    $display("e2 = %p ",e2);
    $display("salary = %d",e2.salary);
    $display("bit size of the e1 = %0d , e2 = %0d",$bits(e1),$bits(e2));
  end
endmodule

/*
e1 = '{experience:'h0, id:60, salary:'h7530}
e2 = '{experience:'h2, id:60, salary:'hc350} 
salary =  50000
bit size of the e1 = 29 , e2 = 29
*/
