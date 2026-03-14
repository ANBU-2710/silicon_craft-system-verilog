module std_random_module;
bit [3:0]a;
bit [3:0]b;
bit [3:0]c;
bit [3:0]d;
bit [3:0]e;
initial begin
  repeat(4)begin
  void'( std ::randomize(a));
  $display("value of a  %d",a);
  void'(std::randomize(b)with  {b>6; a<12;});
  $display("value of b :%d",b);
  void'(std::randomize(c,d)with  {c<4; d<3;});
  $display("value of c :%d and d  %d ",c,d);
  void'(std::randomize(e)with  {e inside {[1:4]};});
  $display("value of e :%d ",e);
end
end
endmodule


/*
rand value of a : 4
rand value for b: 9 c: 9
rand value of d: 1 e: 3
rand value of f: 2 g: 10
rand value of a : 3
rand value for b: 1 c: 5
rand value of d: 4 e: 9
rand value of f: 5 g: 6
rand value of a : 1
rand value for b: 2 c: 10
rand value of d: 2 e: 6
rand value of f: 1 g: 7
rand value of a : 7
rand value for b: 10 c: 12
xmsim: *W,RNDOCS: These constraints and variables contribute to the set of conflicting constraints (view the extended help for this message using 'xmhelp xmsim RNDOCS' for guidelines on how debug the issue):

In ./testbench.sv
line 19:  ( a < 4'h5 )


Variable  Type         Status        Current Value          Source                   
-------------------------------------------------------------------------------------
a         (bit [3:0])  STATE VAR     7 ('h7)                ./testbench.sv ; line 4


      std::randomize(d,e)with {d<5; e<10; a<5;};
                    |
xmsim: *W,SVRNDF (./testbench.sv,19|20): The randomize method call failed. The unique id of the failed randomize call is 14.
Observed simulation time : 0 FS + 0.
rand value of d: 2 e: 6
rand value of f: 1 g: 12
rand value of a : 8
rand value for b: 3 c: 11
xmsim: *W,RNDOCS: These constraints and variables contribute to the set of conflicting constraints (view the extended help for this message using 'xmhelp xmsim RNDOCS' for guidelines on how debug the issue):

In ./testbench.sv
line 19:  ( a < 4'h5 )


Variable  Type         Status        Current Value          Source                   
-------------------------------------------------------------------------------------
a         (bit [3:0])  STATE VAR     8 ('h8)                ./testbench.sv ; line 4


      std::randomize(d,e)with {d<5; e<10; a<5;};
                    |
xmsim: *W,SVRNDF (./testbench.sv,19|20): The randomize method call failed. The unique id of the failed randomize call is 18.
Observed simulation time : 0 FS + 0.
rand value of d: 2 e: 6
rand value of f: 1 g: 11
*/
