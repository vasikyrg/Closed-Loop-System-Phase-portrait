function phase_portrait(x1,x2,x1dot,x2dot)
size_x=size(x1);
for i=1:size_x(2)
    quiver(x1(:,i),x2(:,i),x1dot(:,i),x2dot(:,i))
    hold on
end
