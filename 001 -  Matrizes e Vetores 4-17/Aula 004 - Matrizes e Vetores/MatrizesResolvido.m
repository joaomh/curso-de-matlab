%% 
%     Curso do canal ExataMenteS
%     Aula 4 - Vetores e Matrizes
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     Instrutor: João Pinheiro
%%

% crie um vetor de uma linha usando colchetes 
vetor = [ 1 2 3 ];

% crie um vetor com uma coluna usando colchetes
vetor =  [ 1 ; 2 ; 3]

% crie um vetor de uma coluna usando a transposta de uma linha
vetor = [ 1 2 3 ]'

% crie uma matriz 2x5
matriz = [ 1 3 4 5 6; 1 3 4 2 3];

% crie um vetor de uma linha com apenas o numero 1
vetor = ones(1,30);

% crie uma coluna de vetores com todos com o mesmo valor
% use o valor de pi
vetor = ones(30,1)*pi;
vetor = ones(30,1)*0+pi;

% crie uma matriz de numeros aleatorios
matriz = randn(3);

% calcule a transposta dessa matriz e guarde ela em uma nova matriz
matriznova = matriz';

% crie uma matriz quadrada
A = [ 1 2 ; 0 3];

% calcule a sua inversa
InvA = A^(-1);
InvA = inv(A);

% multiplique a sua matriz pela sua inversa
I = A*InvA;

% calcule os autovetores e autovalores dessa matriz
eig(A);
[AutoVetor, AutoValores] = eig(A);
M1 = A*AutoVetor;
M2 = AutoVetor*AutoValores;
R = M1 - M2;

%%
