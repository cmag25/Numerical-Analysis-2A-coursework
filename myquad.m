%B2 function
function out=myquad(g,x,w)
% Evaluate sum_{i=1,...,n} w_i g(x_i)
assert (length(x)==length(w)) % error checking
sum = 0; 
for i=1:length(x)
    sum = sum+(w(i)*g(x(i))); %calculate quadrature
end
tolerance=10^-14; %account for floating point numeric values
if sum<tolerance
    sum=0;
end
out = sum;

    
    

