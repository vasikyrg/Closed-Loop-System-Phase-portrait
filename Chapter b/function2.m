function dx=function2(t,x)
e0=0.2;
a=0.06;
if(x(1)<=-e0)
    N=1;
elseif(x(1)>-e0 && x(1)<e0)
    N=a;
elseif(x(1)>=e0)
    N=1;
end
dx=[x(2);-x(2)-4*N*x(1)];
end