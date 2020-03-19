%%
%     Curso do canal ExataMenteS
%     Aula 39 - Plot de Esferas e Cubos
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%%

figure(1), clf, hold on

% Linhas de cima
plot3([0  0],[0 1],[1 1],'b','linew',2)
plot3([0  1],[0 0],[1 1],'b','linew',2)
plot3([0  1],[1 1],[1 1],'b','linew',2)
plot3([1  1],[0 1],[1 1],'b','linew',2)

% Linhas de baixo
plot3([0  0],[0 1],[0 0],'k','linew',2)
plot3([0  1],[0 0],[0 0],'k','linew',2)
plot3([0  1],[1 1],[0 0],'k','linew',2)
plot3([1  1],[0 1],[0 0],'k','linew',2)

% Linhas Verticais
plot3([0  0],[0 0],[0 1],'m','linew',2)
plot3([1  1],[1 1],[0 1],'m','linew',2)
plot3([0  0],[1 1],[0 1],'m','linew',2)
plot3([1  1],[0 0],[0 1],'m','linew',2)

axis square
xlabel('x'), ylabel('y'), zlabel('z')

% Esfera
[xc,yc,zc] = sphere;
% plot3(xc+.5/2,yc+.5/2,zc+.5/2,'ko','markerfacecolor','m')

% Utilizar a scatter3
%scatter3(xc(:)+.5/2,yc(:)+.5/2,zc(:)+.5/2,100,randn(size(zc(:))),'filled')

rotate3d on

set(gca,'xtick',[],'ytick',[],'ztick',[])

