disp("**********************************************");

%A=[1,1,1,0;1,1,0,1;1,0,1,1;1,0,1,1]
A=load_sparse("filename","Un");
%[Tno_Of_triangle no_of_triangle]=Compute_Triangle("out.facebook-wosn-links");
[Tno_Of_triangle no_of_triangle]=Compute_Triangle("filename");
if(trace(A)>0)
 A=A-diag(diag(A));
endif
%the local clustering coefficient c(u) of a node u is defined as
%the probability that two randomly picked neighbours of u are also connected.
%Asq=A*A;
d_u=full(sum(A));

for i = 1:length(A)
 %   no_of_triangle(i)=(Asq(i,:)*A(:,i))/6;
    if d_u(i)==0 || d_u(i)==1
      local_Clustering_Coefficient(i)=0;
      continue
    endif
   %disp(no_of_triangle(i)) %calculation number of triangle of each user.
   no_of_wedges(i)= (d_u(i)*(d_u(i)-1))/2;% d_uC2: Number of  paths length 2 possible . 
   local_Clustering_Coefficient(i)= no_of_triangle(i)/(2*no_of_wedges(i));
        % disp(no_of_wedges(i))
   %endif
endfor

%disp(local_Clustering_Coefficient)
disp("******************global clustering coefficient****************************");
disp("Variant 1:As the average over all nodes’ local clustering coefficient.")
Global_Clustering_Coefficient1=sum(local_Clustering_Coefficient)/length(A);
disp(full(Global_Clustering_Coefficient1));
disp("As the probability that two incident edges are completed by a third edge to form a triangle.");
t_tri=full(sum(no_of_triangle));
t_w=sum(no_of_wedges);
Global_Clustering_Coefficient2 = (3*Tno_Of_triangle)/t_w;
disp(full(Global_Clustering_Coefficient2));
