module string_methods;
  string str1 ="silicon";
  string str2 ="craft";
  string str3 = "Simulation";
  string temp;
  initial begin
    //display the string elements
    $display("string1 = %s : string2 = %s",str1,str2);
    //display the length of the string
    $display("use str.len() to return the length of the string");
    $display("lenth of the str1 : %0d , str2 : %0d ",str1.len(),str2.len());
    
    //putc() method
    $display("use str.putc() to replace the given index with given element");
    temp = str1;
    temp.putc(2,"t");
    $display("temp = %s",temp);
    //getc() method
    $display("str.getc() :returns the specific element presnt in the given index");
    $display("temp = %s",temp.getc(2));
    //tolower() method
    $display("str.tolower():returns the string elements in lowercase");
    $display("str1 =%s",str1.tolower());
    //toupper() method
    $display("str.toupper():returns the string elements in uppercase");
    $display("str2 =%s",str2.toupper());
    //compare() method
    $display("str.compare(str):compare the 2 strings and returns the value in ascii format");
    $display("result = %0d",str1.compare(str2));
    //icompare() method
    $display("str.icompare(str):compare the 2 strings without consider the case and returns the value in ascii format");
    
    $display("result = %0d",str1.icompare(str3));
    //substr() method
    $display("str.substr(): returns the substring of mainstring by given index");
    temp = str1.substr(0,2);
    $display("substring = %s",temp);//str1.substr(0,2));
  end
endmodule

/*
string1 = silicon : string2 = craft :string3 = Simulation
# KERNEL: use str.len() to return the length of the string
# KERNEL: lenth of the str1 : 7 , str2 : 5 ,str3 = 10 
# KERNEL: use str.putc() to replace the given index with given element
# KERNEL: temp = siticon
# KERNEL: str.getc() :returns the specific element presnt in the given index
# KERNEL: temp = t
# KERNEL: str.tolower():returns the string elements in lowercase
# KERNEL: str1 =silicon
# KERNEL: str.toupper():returns the string elements in uppercase
# KERNEL: str2 =CRAFT
# KERNEL: str.compare(str):compare the 2 strings and returns the value in ascii format
# KERNEL: result = 1
# KERNEL: str.icompare(str):compare the 2 strings without consider the case and returns the value in ascii format
# KERNEL: result = -1
# KERNEL: str.substr(): returns the substring of mainstring by given index
# KERNEL: substring = sil
*/
