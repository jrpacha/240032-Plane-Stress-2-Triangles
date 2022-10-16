% plot: figure-1
clearvars
close all

ndiv = 15;
t = 1000;
scale=0.6;
signe=1;

delta = -5.0;

square = [0, 0;
    120, 0;
    120, 160;
    0, 160;
    0, 0];

edgeLength = norm(square(4,:)-square(1,:));
ndivEdgeFixed = 68;
h = 1/ndivEdgeFixed;

plot(square(:,1),square(:,2),'-','LineWidth',2,'Color','black')
hold on
axis equal
axis off

for i=0:h:1
    p = (1-i)*square(1,:)+i*square(4,:);
    line = [p; p+delta];
    plot(line(:,1),line(:,2),'-k')
end

plotEdgeConstantBC(square(2,:),square(3,:),t,ndiv,scale,signe,...
    'Color','black','LineWidth',1.5)

text(155,85,'$\tau_{0}$','FontSize',18,'Interpreter','latex')
text(50,-20,'Figure $1$','Fontsize',20,'Interpreter','latex')
hold off

saveas(gcf,'figure1.png')