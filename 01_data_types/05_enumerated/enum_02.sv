module enumerated;
  enum{silicon,craft=10,vlsi,silicic,innova=20,tecnologies,semicon}scv;
  
  initial begin
    //display the default value starting from 0 and incremented by 1 untill we assign a value to it;and assigning the values starting from index position 0;
    $display("the value incremented from assigned value and assign values to element must be unique,no duplicate values can be presnt"); 
    for(int i=0;i<7;i++)begin
      $display("scv= %s and its default value = %0d",scv.name,scv);
      scv = scv.next();
    end
    //it prints the elements starting from index 3 but prints the default value that alredy assigned.
    $display("\nprints the elements starting from index 3 but prints the default value that alredy assigned");
    scv = silicic;
    for(int i=0;i<7;i++)begin
      $display("scv= %s and its default value = %0d",scv.name,scv);
      scv = scv.next();
    end
  end
endmodule

/*
the value incremented from assigned value and assign values to element must be unique,no duplicate values can be presnt
scv= silicon and its default value = 0
scv= craft and its default value = 10
scv= vlsi and its default value = 11
scv= silicic and its default value = 12
scv= innova and its default value = 20
scv= tecnologies and its default value = 21
scv= semicon and its default value = 22

prints the elements starting from index 3 but prints the default value that alredy assigned
scv= silicic and its default value = 12
scv= innova and its default value = 20
scv= tecnologies and its default value = 21
scv= semicon and its default value = 22
scv= silicon and its default value = 0
scv= craft and its default value = 10
scv= vlsi and its default value = 11
*/
