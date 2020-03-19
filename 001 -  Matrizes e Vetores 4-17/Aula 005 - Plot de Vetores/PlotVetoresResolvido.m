%% 
%     Curso do canal ExataMenteS
%     Aula 5 - Produto Escalar e Plot 2d/3d de vetores
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     Instrutor: João Pinheiro

% Plot 2D
% Metodo I
A = [0 1]';
B = [0 5]';
plot(A, B);
xlabel('x');
ylabel('y');
title('Plot Vetor 2D');

% Metodo II
C = [1 5]'
plotv(C);
xlabel('x');
ylabel('y');
title('Plot Vetor 2D');

% Plot 3D
% Metodo I
A = [0 0 3 ]';
B = [0 0 5 ]';
C = [0 0 7 ]';
plot3(A, B, C);
xlabel('x');
ylabel('y');
zlabel('z');
title('Plot Vetor 3D');

% Metodo II
M = [ 0 0 3; 0 0 5; 0 0 7 ];
plot3(M(1,:),M(2,:),M(3,:));
xlabel('x');
ylabel('y');
zlabel('z');
title('Plot Vetor 3D');
 

