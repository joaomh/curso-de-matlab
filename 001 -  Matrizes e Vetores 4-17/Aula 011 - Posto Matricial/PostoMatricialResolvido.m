%%
%     Curso do canal ExataMenteS
%     Aula 11 - Posto Matricial
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%%

% Dimensao da nossa matriz
m = 10;

% Verificar os vetores LI
rank( randn(m,m) )

% Uma solucao, gerar uma matriz M x M-1 e preencher a coluna final
A = randn(m,m-1);
% O posto matricial tem que ser m-1
size(A);
rank(A);

% Um metodo mais facil
A(:,m) = A(:,1);

% Verificar o resultado
rank(A)
size(A)
%%
% Combinacao linear aleatoria
CombLin = randn( 1, m-1 );

% Recriar a matriz
A = randn(m,m-1);

% Realizar a soma para ter a coluna final
A(:,m) = sum( bsxfun(@times, A, CombLin), 2);
A(:,m) = sum( A(:,1:m-1).*repmat(CombLin, m, 1), 2 );

% Verificar o posto e a dimensao da matriz
rank(A)
size(A)

%%
