module string_operations;
  string string1 = "silicon";
  string string2 = "craft";
  string str_result;
  
  initial begin
    $display("string1 = %s : string2 = %s",string1,string2);
    //equality operator
    $display("equality operator '==' checks the both strings are equal"); 
    if(string1 == string2)
      $display("%s is equal to %s",string1,string2);
    else
      $display("%s is not equal to %s",string1,string2);
    //inequality operator
    $display("inequality operator '!=' checks the both strings are not equal"); 
    if(string1 != string2)
      $display("%s is not equal to %s",string1,string2);
    else
      $display("%s is equal equal to %s",string1,string2);
    //comparision operator(>,>=,<,<=)
    $display("comparision operators that compares the both string");
    if(string1 > string2)
      $display("%s is greaterthan %s",string1,string2);
    if(string2 >= string1)
      $display("%s is  greaterthan or equal to %s",string2,string1);
    if(string1 < string2)
      $display("%s is  lessthan %s",string1,string2);
    if(string2 <= string1)
      $display("%s is  lessthan or equal to %s",string2,string1);
    
    //concatenation operator
    $display("concatenation of strings with new element");
    str_result = {string1,string2,"vlsi"};
    $display("str_result = %s",str_result);
    
    //replication operator
    $display("replication operator that repeat the elements");
    str_result={3{string1}};
    $display("str_result =%s",str_result);
  end
endmodule

/*
# KERNEL: string1 = silicon : string2 = craft
# KERNEL: equality operator '==' checks the both strings are equal
# KERNEL: silicon is not equal to craft
# KERNEL: inequality operator '!=' checks the both strings are not equal
# KERNEL: silicon is not equal to craft
# KERNEL: comparision operators that compares the both string
# KERNEL: silicon is greaterthan craft
# KERNEL: craft is  lessthan or equal to silicon
# KERNEL: concatenation of strings with new element
# KERNEL: str_result = siliconcraftvlsi
# KERNEL: replication operator that repeat the elements
# KERNEL: str_result =siliconsiliconsilicon
*/
