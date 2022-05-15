clearvars
close all

square = [0, 0;
    120, 0;
    120, 160;
    0, 160;
    0, 0];

diagonal = [0,0;
    120, 160];

plot(square(:,1),square(:,2),'-','LineWidth',2,'Color','black')
axis equal
axis off
hold on

plot(diagonal(:,1),diagonal(:,2),'-','LineWidth',2,'Color','black')
plot(square(1:4,1),square(1:4,2),'o','MarkerFaceColor','black',...
    'MarkerSize',10,'Color','black')

text(-1,-10,'$1$','FontSize',18,'Interpreter','latex')
text(119,-10,'$2$','FontSize',18,'Interpreter','latex')
text(119,169,'$3$','FontSize',18,'Interpreter','latex')
text(-1,169,'$4$','FontSize',18,'Interpreter','latex')

text(7,4,'$1$','FontSize',14,'Interpreter','latex','color','red')
text(113,4,'$2$','FontSize',14,'Interpreter','latex','color','red')
text(114,147,'$3$','FontSize',14,'Interpreter','latex','color','red')

text(109,155,'$1$','FontSize',14,'Interpreter','latex','color','red')
text(3,155,'$2$','FontSize',14,'Interpreter','latex','color','red')
text(3,15,'$3$','FontSize',14,'Interpreter','latex','color','red')

text(40,130,'$\Omega^{2}$','FontSize',34,'Interpreter','latex')
text(90,30,'$\Omega^{1}$','FontSize',34,'Interpreter','latex')

text(50,-15,'Figure $2$','Fontsize',20,'Interpreter','latex')

hold off

saveas(gcf,'figure2.png')