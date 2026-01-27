module queue;
  string j;
  string queue[$:4]='{"design","verification","manufacturing","silicon"};
  initial begin
    j="vlsi";
    queue.insert(4, j);
    $display(queue);
    queue.push_front("craft");
    $display("cannot push front element because it is bounded,it prints the actual old elements");
    $display(queue);
    queue.delete(1);
    $display(queue);
    queue.push_front("craft");
    $display("now push front the element because of the one element deleted");
    $display(queue);
    queue.push_back("anbu");
    $display("cannot push back element because queue is full,it prints the actual old elements");
    $display(queue);
    j=queue.pop_back();
    $display(j,",",queue);
    j=queue.pop_front();
    $display(j,",",queue);
    queue.delete();
    $display("after delete the whole array,size of the array = %p",queue.size());
  end
endmodule


/*
# KERNEL: '{"design", "verification", "manufacturing", "silicon", "vlsi"}
# RUNTIME: Warning: RUNTIME_0249 testbench.sv (11): Operation would exceed maximum right index of 4.
# KERNEL: cannot push front element because it is bounded,it prints the actual old elements
# KERNEL: '{"design", "verification", "manufacturing", "silicon", "vlsi"}
# KERNEL: '{"design", "manufacturing", "silicon", "vlsi"}
# KERNEL: now push front the element because of the one element deleted
# KERNEL: '{"craft", "design", "manufacturing", "silicon", "vlsi"}
# RUNTIME: Warning: RUNTIME_0249 testbench.sv (19): Operation would exceed maximum right index of 4.
# KERNEL: cannot push back element because queue is full,it prints the actual old elements
# KERNEL: '{"craft", "design", "manufacturing", "silicon", "vlsi"}
# KERNEL: vlsi,'{"craft", "design", "manufacturing", "silicon"}
# KERNEL: craft,'{"design", "manufacturing", "silicon"}
# KERNEL: after delete the whole array,size of the array = 0
*/
