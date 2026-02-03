module union_unpacked;
  typedef union{int a;
                bit[15:0] b;}data;
  initial begin
    
    data d1,d2;
    d1.a = 'hffff_eeee;
    d1.b = 'd100;
    $display("d1 = %p",d1);
    
    d2.a = 'hffff;
    d2.b = 'd50;
    $display("d2 = %p",d2);
    
    //largest datatype size can be allocated
    $display("bitsize of d1 = %0d , d2 = %0d",$bits(d1),$bits(d2));
  end
endmodule


/*
# d1 = '{a:-65436, b:100}
# d2 = '{a:50, b:50}
# bitsize of d1 = 32 , d2 = 32
*/
