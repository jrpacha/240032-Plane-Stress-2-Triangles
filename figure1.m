clearvars
close all

for i=0:2.5:160
    line = [-5,-5+i;
        0,i];
    plot(line(:,1),line(:,2),'-k')
    hold on
end
axis equal
axis off
square = [0, 0;
    120, 0;
    120, 160;
    0, 160;
    0, 0];
plot(square(:,1),square(:,2),'-','LineWidth',2,'Color','black')
lineArrow = [120, 160;
    130,160];
%plot(lineArrow(:,1),lineArrow(:,2),'--k','LineWidth',1.4)

for i=0.14:0.06:0.94
    x = [0.75,0.85];   % adjust length and location of arrow 
    y = [i,i];
    annotation('arrow',x,y,'Linewidth',2.25)
end
text(155,85,'$\tau_{0}$','FontSize',18,'Interpreter','latex')
text(50,-20,'Figure $1$','Fontsize',20,'Interpreter','latex')
hold off

saveas(gcf,'figure1.png')