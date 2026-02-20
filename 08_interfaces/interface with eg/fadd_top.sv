`include "fulladder_d.sv"

module fadd_top(fa_if i_f);
  
  fulladder fadd_dut(.a(i_f.a),
                  .b(i_f.b),
                  .c_in(i_f.c_in),
                  .sum(i_f.sum),
                  .c_out(i_f.c_out)
                 );
endmodule
