disp("******************QUESTION 1****************************");
A=load_sparse("filename","Un");
#calculating degrees/friends of each user.
degrees=(sum(A));%computing number of friends.
%disp("Number of friends d(u)");
%disp(degrees);
#average number of friends that a random person has avgdegree= 2*numofedges/numberofnodes
avgdegree= ((sum(sum(A))))/length(A);
#disp("average number of friends that the friends of u have");
#disp(full(avgdegree));
#average no. of friends of a friends have . called it avgfoaf
Afoaf= A^2;
#f_u= d_u.^2;
f_u= (sum(Afoaf));
#sumofdegrees=sum(degrees);
avgfoaf= sum(f_u)/sum(degrees);
#disp(full(avgfoaf));
#calculating average friend of a friends
avg_foaf= compute_avg_friends(degrees,A);
#computing difference 
disp("******************QUESTION 1.3****************************");
compute_difference(degrees,avg_foaf);
disp("******************QUESTION 1.4****************************");
compute_result(degrees,avg_foaf);# NOT CONFIRMED ABOUT THAT .
disp("Here we have two values of average f friend of friend calculated in two different way.")
disp("Please do let us know which one is correct ")
disp(full(avgfoaf));

