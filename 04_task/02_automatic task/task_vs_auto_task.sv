module short_demo;
  int val;
    task static_inc(int id);
        //int val; 
        val = id;
        #10;
        $display("Static Task  | ID: %0d | internal val: %0d", id, val);
    endtask

    task automatic auto_inc(int id);
       // int val;
        val = id;
        #10;
        $display("Auto Task    | ID: %0d | internal val: %0d", id, val);
    endtask

    initial begin
      $display("Starting Static Test (Overwrite)");
      
        fork
            static_inc(1); 
            static_inc(2); 
        join

      $display("Starting Automatic Test (new mem)");
      
        fork
            auto_inc(1); 
            auto_inc(2); 
        join
    end

endmodule

/*
Starting Static Test (Overwrite)
Static Task  | ID: 2 | internal val: 2
Static Task  | ID: 2 | internal val: 2
Starting Automatic Test (new mem)
Auto Task    | ID: 1 | internal val: 2
Auto Task    | ID: 2 | internal val: 2
*/
