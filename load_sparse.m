

function [A] = load_sparse(filename,typ)  
  #loading the file in E 
  E=load(filename);
  %n=max(max(E));
  n=max(max(E(:,2),max(E(:,1))));#can take size(A);calculating maximum number of rows and columns  to create matrix
  A=sparse(E(:,1),E(:,2),1,n,n); #creating sparse matrix
 # #now we have to create adjacency matrix 
 if (typ=="d")# for directed nework
   A= A;
 elseif (typ=="Un")
   A=(A+A'); # we doing this to create full matrix otherwise 1-2 we have connection but 2-1 will be 0.
 endif  
   # a full sparse adjacency matrix
  
endfunction
