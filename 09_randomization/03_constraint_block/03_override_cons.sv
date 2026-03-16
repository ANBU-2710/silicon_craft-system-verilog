// Code your testbench here
// or browse Examples
class parent;
  rand logic[7:0] a;
  rand logic[7:0] b;
  
   constraint con{a==5; b==10;};
endclass

class child extends parent;
  rand byte c;
   
  constraint con{a==10;b==5;c==20;};
  
endclass

module overide_cons;
  
  child c1;
  
  initial begin
    c1 = new();
    
    repeat(2)begin
      c1.randomize();
      $display("the rand value a = %0d | b = %0d | c = %0d",c1.a,c1.b,c1.c);
    end
    
  end
  
endmodule



/*
the rand value a = 10 | b = 5 | c = 20
the rand value a = 10 | b = 5 | c = 20
*/
