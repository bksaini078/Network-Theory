function [] = compute_difference(degrees,avg_friends)
  
  greater = 0;
  equal = 0;
  less = 0;
  
  for i = 1:length(degrees)
    
    if(degrees(i)>avg_friends(i))
      greater = greater + 1;
    endif
    
    if(degrees(i)<avg_friends(i))
      less = less + 1;
    endif
    
    if(degrees(i) == avg_friends(i))
      equal = equal + 1;  
    endif
    
  endfor 
    
    
    disp('No of users where d(u) < f(u)') , disp(less);
    
    disp('No of users where d(u) > f(u)') , disp(greater);
    
    disp('No of users where d(u) = f(u)') , disp(equal);
  
  
endfunction
