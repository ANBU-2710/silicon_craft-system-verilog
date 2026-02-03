module enumerated;
  enum{silicon,craft,vlsi,silicic,innova,tecnologies}scv;
  
  initial begin
    //display the default value starting from 0 and incremented by 1;and assigning the values starting from index position 0;
    for(int i=0;i<6;i++)begin
      $display("scv= %s and its default value = %0d",scv.name,scv);
      scv = scv.next();
    end
    //it prints the elements starting from index 3 but prints the default value that alredy assigned.
    $display("\nprints the elements starting from index 3 but prints the default value that alredy assigned");
    scv = silicic;
    for(int i=0;i<6;i++)begin
      $display("scv= %s and its default value = %0d",scv.name,scv);
      scv = scv.next();
    end
  end
endmodule

/*
# scv= silicon and its default value = 0
# scv= craft and its default value = 1
# scv= vlsi and its default value = 2
# scv= silicic and its default value = 3
# scv= innova and its default value = 4
# scv= tecnologies and its default value = 5
# 
# prints the elements starting from index 3 but prints the default value that alredy assigned
# scv= silicic and its default value = 3
# scv= innova and its default value = 4
# scv= tecnologies and its default value = 5
# scv= silicon and its default value = 0
# scv= craft and its default value = 1
# scv= vlsi and its default value = 2
*/
