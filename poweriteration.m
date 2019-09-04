function [U lambda]=poweriteration(A)
x_new=randi([1 1], length(A),1);% initiating X vector [1,1,1,1,1,1....]
%x_new=ones(length(A),length(A));BAD BAD Idea
%x_old=randi([1 1], length(A),1);
thres=1;
     while thres >1/10000 % threshold till what time this loop should work, for accuracy u can set to minimum
           x_old=x_new;
          x_new=A*x_new;
          x_new=x_new/norm(x_old);% Normalizing by divinding 
         thres=abs(norm(x_new) - norm(x_old)); % calculating threshold
      end
    U= x_old/norm(x_old);%eigen vector 
    lambda=abs(norm(x_new));% eigen values
    %lambda=x_new; %if you want to calculate whole eigen values .
endfunction
