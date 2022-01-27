%B3
syms x
tolerance=10^-14;
%Find reference values for when:
%g(x) = g1(x )= exp(x):
g1 = int(exp(x)*sqrt(1-x*x),-1,1); %calculate integral
eval(g1) %need to evaluate as the above line if outputted would include built in functions
%value for g1 is 1.775499689212181
%g(x) = g2(x) = xsin(x):
g2 = integral(@(x) sin(x).*sqrt(1-x.*x).*x,-1,1); %have to use numerical integration for sin(x)
disp(g2)
%value for g2 is 0.360979944133924

