%B2
%check DOP
format compact;
syms x %allows x to be used in the intergral function
n=10;
[y,w]=getquad(n);
DOPcheck=zeros(1,2*n); %create vector for DOP checking
tolerance=10^-14;
for i=1:(2*n)
    DOPcheck(i)=int((x.^i)*sqrt(1-x*x),-1,1) - myquad(@(x) x^i,y,w); %calculate error (actual integral minus quadrature)
    if DOPcheck(i)<tolerance
        DOPcheck(i)=0; %account for floating point numeric values
    end
end
disp(DOPcheck)

%we can see that with the exception of the 20th element, the elements in
%DOPcheck are 0 so the DOP is 19 aka 2n-1 in this case.