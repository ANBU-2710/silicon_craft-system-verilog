// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module randomization;
  int a;
  int b;
  logic[4:0]c;
  byte d;
  
  initial begin
   
    $display("---$random--returns the 32-bit number---"); 
    repeat(5)begin
      a = $random(); //32-bit sighned number
      $display("the value of a = %0d",a);
    end
    $display("---$urandom--returnss the 32-bit unsighned number---");
    repeat(5)begin
      b = $urandom(); //32-bit unsighned number
      $display("the value of b = %0d",b);
    end
    $display("---$urandom(seed)--/use seed value that can reproduce the same sequence");
    repeat(5)begin
      c = $urandom(10); //use seed value that can reproduce the same sequence
      $display("the value of c = %0d",c);
    end
    $display("---$urandom_range()--returns the value with in the range---");
    repeat(5)begin
      d = $urandom_range(20,50);//returns the value with in the range 20 to 50;
      $display("the value of d = %0d",d);
    end
    
  end
  
endmodule

/*
---$random--returns the 32-bit number---
the value of a = 303379748
the value of a = -1064739199
the value of a = -2071669239
the value of a = -1309649309
the value of a = 112818957
---$urandom--returnss the 32-bit unsighned number---
the value of b = 98710838
the value of b = 1474208060
the value of b = -1098913923
the value of b = 816460770
the value of b = 41501707
---$urandom(seed)--/use seed value that can reproduce the same sequence
the value of c = 28
the value of c = 28
the value of c = 28
the value of c = 28
the value of c = 28
---$urandom_range()--returns the value with in the range---
the value of d = 26
the value of d = 44
the value of d = 35
the value of d = 46
the value of d = 37
*/
