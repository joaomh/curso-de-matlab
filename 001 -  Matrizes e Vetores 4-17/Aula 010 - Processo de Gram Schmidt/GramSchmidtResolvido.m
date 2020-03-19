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
GramSch(:,1) = A(:,1) / norm( A(:,1) );

% Loop as colunas restantes
for i=2:n % Como ja calculamos o primeiro vetor, podemos pular ele
    
    % Iniciar um vetor ortogonal, so por questoes praticas de programacao
    ort = A(:,i);
    
    % Novo Loop para cada coluna de 'n'
    % Pois precisamos deixar o vetor ortogonal a todas as colunas anteriores
    for j=1:i-1
        
        % Primiero precisamos calcular a projecao, como visto em outros videos ( a'b/b'b )
        proj  = dot( ort, GramSch(:,j) )/ dot( GramSch(:,j), GramSch(:,j) );
        ort   = ort - proj * GramSch(:,j);
    end
    
    % new column is normalized projection
    GramSch(:,i) = ort / norm(ort);
end


% Mostre que as colunas sao ortogonais entre si
% Calcule o Produto Escalar entre duas colunas
PE0 = sum( GramSch(:,2) .* GramSch(:,3));
PE1 = sum( GramSch(:,1) .* GramSch(:,1));

% Mostre que e ortogonal pela multiplicacao matricial 
Id1 = GramSch * GramSch'; % Dependendo da dimensao da sua matriz, Gram Schmidt nao funciona
Id2 = GramSch' * GramSch; % A teoria de Algebra Linear explica isso melhor, consulte
                         % https://pt.wikipedia.org/wiki/Processo_de_Gram-Schmidt 

% Atencao: se n>m, apenas as primeiras m colunas sao validas

%% Uma implementacao melhor e mais estavel, utilizando a decomposicao QR

% Decomposicao QR
[Q,R] = qr( A ); 

% Na decoposicao QR, a matriz Q pro sua definicao e uma matriz unitaria e ortogonal
GramSch2 = Q; 

% Mostre que as colunas sao ortogonais entre si
% Mostre que e ortogonal pela multiplicacao matricial
Id3 = GramSch2 * GramSch2';
Id4 = GramSch2' * GramSch2;


%%

