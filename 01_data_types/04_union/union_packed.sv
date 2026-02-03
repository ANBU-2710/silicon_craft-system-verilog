module union_packed;
  typedef union packed{byte a;
                bit[7:0] b;
                logic[7:0] c;}data; //all the data types present inside the packed union must have same size
  initial begin
    
    data d1,d2;
    d1.a = 'hff;
    d1.b = 'd100;
    d1.c = 'd200;
    $display("d1 = %p",d1);
    
    d2.a = 'hf;
    d2.b = 'd50;
    d2.c = 'd250;
    $display("d2 = %p",d2);
    
    //the bitsize can be same common datatypes size
    $display("bitsize of d1 = %0d , d2 = %0d",$bits(d1),$bits(d2));
  end
endmodule

/*
# d1 = '{a:-56, b:200, c:200}
# d2 = '{a:-6, b:250, c:250}
# bitsize of d1 = 8 , d2 = 8
*/
