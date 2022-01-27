%B1
function [x,w]=getquad(n)
% Return a vector of quadrature nodes x and weights w,
% of dimension n.
An = zeros(n); %creates zeros matrix to be made into An
v = zeros(1,n-1); %creates vector to go on the super diagonals of An
v = v+1/2; %makes all elements of v 1/2
An = diag(v,1); %puts v on the 1st super diagonal 
An = An+transpose(An); %puts v on the -1th super diagonal
w = zeros(1,n); %create vector for weights
x = zeros(1,n); %create vector for nodes
[V,D] = eig(An,"vector"); %find eig values and vectors
for i=1:n
    x(i) = D(i); %xis are eigenvalues
    w(i) = (pi/2)*(1/(norm(V(:,i))^2))*(V(1,i)^2); %calculate weights using formula
end   
end
