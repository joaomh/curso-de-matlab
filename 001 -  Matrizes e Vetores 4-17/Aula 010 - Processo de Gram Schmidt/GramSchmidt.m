%%
%     Curso do canal ExataMenteS
%     Aula 10 - Processo de Gram Schmidt
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     Instrutor: João Pinheiro

%%
% Crie a Matriz
m = 7;
n = 9;

% Numeros inteiros aleatorios
A = round( 10 * randn(m,n) ); % A funcao round ela arredeonda o valor para um numero inteiro
                              % Por isso eu multiplico por 10, para garantir que nao teremos 0 na nossa matriz

% Crie uma copia da matriz original A
GramSch = A;

% Normalizar a primeira coluna ( Primeiro vetor )
GramSch(:,1) =

% Loop as colunas restantes
for i=2:n % Como ja calculamos o primeiro vetor, podemos pular ele
    
    % Iniciar um vetor ortogonal, so por questoes praticas de programacao
    ort = 
    
    % Novo Loop para cada coluna de 'n'
    % Pois precisamos deixar o vetor ortogonal a todas as colunas anteriores
    for j=1:i-1
        
        % Primiero precisamos calcular a projecao, como visto em outros videos ( a'b/b'b )
        proj  = 
        ort   = 
    end
    
    % new column is normalized projection
    GramSch(:,i) = 
end


% Mostre que as colunas sao ortogonais entre si
% Calcule o Produto Escalar entre duas colunas
PE0 = 
PE1 = 

% Mostre que e ortogonal pela multiplicacao matricial 
% Dependendo da dimensao da sua matriz, Gram Schmidt nao funciona
% A teoria de Algebra Linear explica isso melhor, consulte
% https://pt.wikipedia.org/wiki/Processo_de_Gram-Schmidt 

% Atencao: se n>m, apenas as primeiras m colunas sao validas

%% Uma implementacao melhor e mais estavel, utilizando a decomposicao QR

% Decomposicao QR
[Q,R] = 

% Na decoposicao QR, a matriz Q pro sua definicao e uma matriz unitaria e ortogonal
GramSch2 = 

% Mostre que as colunas sao ortogonais entre si
% Mostre que e ortogonal pela multiplicacao matricial
Id3 = 
Id4 = 



