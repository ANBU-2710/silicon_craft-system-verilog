interface fa_if;
  
  logic a,b,c_in;
  logic sum,c_out;
  
  modport dut(input a,b,c_in, output sum,c_out);
  modport tb(output a,b,c_in,input sum,c_out);
  
endinterface
