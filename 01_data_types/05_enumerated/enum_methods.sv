module enumerated;
  typedef enum{silicon,craft,vlsi,silicic,innova,tecnologies,semicon}scv;
  scv s;
  initial begin
    //scv s;
    //return the first element in the enum
    $display("first():return the first element in scv");
    s = s.first();
    $display("first element = %s",s);
    
    //return the last elementvin the enum
    $display("last():return thr last element in the scv");
    s = s.last();
    $display("last element = %s",s);
    
    //return the previous element of the current element in the enum
    s = silicic;
    $display("prev():return the previous element of silicic");
    s = s.prev();
    $display("previous element of silicic = %s",s);
    
    //return the next element to the current element in the enum
    s = vlsi;
    $display("next():return the next element to the vlsi");
    s = s.next();
    $display("next element to the vlsi = %s",s);
    
    //return the current element name in the array
    $display("name():return the current element name");
    $display("current element = %s",s.name());
    
    //return the number of element in the enum
    $display("num():return the total number of elements in the enum");
    $display("total number of elements in scv enum = %0d",s.num());
  end
endmodule

/*
first():return the first element in scv
first element = silicon

last():return thr last element in the scv
last element = semicon

prev():return the previous element of silicic
previous element of silicic = vlsi

next():return the next element to the vlsi
next element to the vlsi = silicic

name():return the current element name
current element = silicic

num():return the total number of elements in the enum
total number of elements in scv enum = 7
*/
