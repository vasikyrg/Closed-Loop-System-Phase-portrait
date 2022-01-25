clear all
clc
syms  x 
arxikes_times_x1 = [-2 1.5; -2.5 0.8; 1.5 2; 0.2 1.8; 2.5 -0.8; 2 -2; -0.2 1.8; -1 2.5];
figure
for i=1:4
    [t,x]=ode45(@function1,[0 18], [arxikes_times_x1(i,1) arxikes_times_x1(i,2)]);
    subplot(2,2,i)
    plot(t,x,'-')
    title("Graphices parastaseis gia arxikes times:(x1(0),x2(0)) = ("+arxikes_times_x1(i,1)+","+arxikes_times_x1(i,2)+")")
    legend('x1(0)','x2(0)')
end
figure
for i=1:4
    [t,x]=ode45(@function1,[0 18], [arxikes_times_x1(i+4,1) arxikes_times_x1(i+4,2)]);
    subplot(2,2,i)
    plot(t,x,'-')
    title("Graphices parastaseis gia arxikes times:(x1(0),x2(0)) = ("+arxikes_times_x1(i+4,1)+","+arxikes_times_x1(i+4,2)+")")
    legend('x1(0)','x2(0)')
end
e0=0.2;
a=0.06;
for i=1:8
    [t,x]=ode45(@function2,[0 18], [arxikes_times_x1(i,1) arxikes_times_x1(i,2)]);
    x1=x(:,1);
    x2=x(:,2);
    if(x(1)<=-e0)
          N=1;
    elseif(x(1)>-e0 && x(1)<e0)
          N=a;
    elseif(x(1)>=e0)
          N=1;
    end
    x1dot=x2;
    x2dot=-x2-4*N*x1;
    figure
    phase_portrait(x1,x2,x1dot,x2dot)
    xlabel('x1')
    ylabel('x2')
    title("phase portrait for (x1(0),x2(0)) = ("+arxikes_times_x1(i,1)+","+arxikes_times_x1(i,2)+")")
end