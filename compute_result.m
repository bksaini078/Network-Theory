function [d f] = compute_result(degrees,avg_friends)
  
   d = sum(degrees)/length(degrees);   
   f = sum(avg_friends)/length(avg_friends);
   
  if(d > f)
    disp('The average d of all nodes is greater than average f of all nodes')
    disp('Average d for all nodes: '), disp(d);
    disp('Average f for all nodes: '), disp(f);
    
  endif
  
  if(d < f)
    disp('The average d of all nodes is less than average f of all nodes')
    disp('Average d for all nodes: '), disp(full(d));
    disp('Average f for all nodes: '), disp(f);

  endif
  
  if(d == f)
    disp('The average d of all nodes is equal to average f of all nodes')
    disp('Average d for all nodes: '), disp(d)
    disp('Average f for all nodes: '), disp(f)

  endif
  

  
endfunction
