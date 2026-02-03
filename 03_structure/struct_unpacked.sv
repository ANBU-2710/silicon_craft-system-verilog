module structure_unpacked;
   typedef struct {string name;
                  bit[3:0] experience;
                  byte id;
                  logic[16:0] salary;
                  }employee;
  initial begin
    
    employee e1,e2;
    e1 = '{"anbu",'d0,'d60,'d30000};
    $display("e1 = %p",e1);
    
    e2.name = "abinash";
    e2.experience = 'd2;
    e2.id = 'd60;
    e2.salary = 'd50000;
    
    $display("e2 = %p ",e2);
    $display("salary = %d",e2.salary);
    
    //display the size 
    
    $display("bit size of the e1 = %0d , e2 = %0d",$bits(e1),$bits(e2));
  end
endmodule


/*
# e1 = '{name:"anbu", experience:0, id:60, salary:30000}
# e2 = '{name:"abinash", experience:2, id:60, salary:50000} 
# salary =  50000
# bit size of the e1 = 61 , e2 = 85
*/
