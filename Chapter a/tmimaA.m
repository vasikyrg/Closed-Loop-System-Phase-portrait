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
for i=1:8
    [t,x]=ode45(@function1,[0 100], [arxikes_times_x1(i,1) arxikes_times_x1(i,2)]);
    x1=x(:,1);
    x2=x(:,2);
    
    x1dot=x2(:,1);
    x2dot=-4*x1(:,1)-x2(:,1)+1.2;
    
    figure
    phase_portrait(x1,x2,x1dot,x2dot)
    xlabel('x1')
    ylabel('x2')
    title("phase portrait for (x1(0),x2(0)) = ("+arxikes_times_x1(i,1)+","+arxikes_times_x1(i,2)+")")

end
