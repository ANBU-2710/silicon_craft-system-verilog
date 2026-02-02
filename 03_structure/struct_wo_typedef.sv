module structure;
  struct{string name;
         bit[15:0] salary;
         byte id;
        }employee;
  initial begin
    employee = '{"Anbu",'d30000,'d060};
    $display("structure = %p",employee);
    employee.name ="abinash";
    //the name can be overridden
    $display("employee:name = %p",employee.name);
    $display("structure = %p",employee);
  end
endmodule

/*
structure = '{name:"Anbu", salary:'h7530, id:60}
employee:name = "abinash"
structure = '{name:"abinash", salary:'h7530, id:60}
*/
