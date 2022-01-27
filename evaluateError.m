%B4
function [g1Errors, g2Errors] =evaluateError(g1, g2, n)
%arrays for plot values
g1Errors = zeros(1,n);
g2Errors = zeros(1,n);
syms x 
%evaluating the integral for g1 using n = 10 gives 1.775499689212180
%evaluating the integral for g2 using n = 10 gives 0.360979944133924

%code for plot
for i=1:n
    [y,w]=getquad(i); %get nodes and weights
    %evaluate g1:
    g1Eval = myquad(g1,y,w);
    %evaluate g2
    g2Eval = myquad(g2,y,w);
    g1Errors(i) = abs(1.775499689212181 - g1Eval); %use value from B3
    g2Errors(i) = abs(0.360979944133924 - g2Eval); %use value from B3
end
xaxis=1:20;
semilogy(xaxis, g1Errors, xaxis, g2Errors)
legend("Error for g1", "Error for g2")
title("Plot of how the quadrate error changes with n for g1 and g2")
xlabel("Dimension of square matrix A")
ylabel("Error")
end

    

