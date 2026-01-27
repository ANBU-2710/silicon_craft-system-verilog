module queue_unbound;
  string j;
  string queue[$]='{"design","verification","manufacturing","silicon"};
  initial begin
    j="vlsi";
    queue.insert(4, j);
    $display(queue);
    queue.push_front("craft");
    $display("can push front element because it is unbounded,it prints the actual old elements with new element");
    $display(queue);
    queue.delete(1);
    $display(queue);
    queue.push_front("design");
    $display(queue);
    queue.push_back("anbu");
    $display("can push back element because queue is unbound,it prints the actual old elements with new element");
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
# KERNEL: can push front element because it is unbounded,it prints the actual old elements with new element
# KERNEL: '{"craft", "design", "verification", "manufacturing", "silicon", "vlsi"}
# KERNEL: '{"craft", "verification", "manufacturing", "silicon", "vlsi"}
# KERNEL: '{"design", "craft", "verification", "manufacturing", "silicon", "vlsi"}
# KERNEL: can push back element because queue is unbound,it prints the actual old elements with new element
# KERNEL: '{"design", "craft", "verification", "manufacturing", "silicon", "vlsi", "anbu"}
# KERNEL: anbu,'{"design", "craft", "verification", "manufacturing", "silicon", "vlsi"}
# KERNEL: design,'{"craft", "verification", "manufacturing", "silicon", "vlsi"}
# KERNEL: after delete the whole array,size of the array = 0 */
