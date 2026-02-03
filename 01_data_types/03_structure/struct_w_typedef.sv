module structure;
  typedef struct{string name;
                 string role;
                 bit[16:0] salary;
                 byte age;}employee;
  initial begin
    employee e1,e2,e3;
    //assign values without identifier
    e1 = '{"anbu","design",'d30000,'d21};
    $display("e1 = %p",e1);
    e2.name = "selvam";
    e2.role = "verification";
    e2.salary = 'd40000;
    e2.age = 'd22;
    $display("e2 = %p",e2);
    //assign values with identifier
    e3 = '{name : "anbuselvam",role:"design and verification",salary: 'd50000,age:'d23};
    $display("e3 = %p",e3);
    $display("name = %s | role = %s | salary = %d | age = %0d",e3.name,e2.role,e3.salary,e1.age);
  end
endmodule

/*
e1 = '{name:"anbu", role:"design", salary:'h7530, age:21}
e2 = '{name:"selvam", role:"verification", salary:'h9c40, age:22}
e3 = '{name:"anbuselvam", role:"design and verification", salary:'hc350, age:23}
name = anbuselvam | role = verification | salary =  50000 | age = 21
*/
