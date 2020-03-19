%%
%     Curso do canal ExataMenteS
%     Aula 16 - Forma Quadrática
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%

% Crie a matrix 2x2
A = [5 3; 7 1];


% Divisao em cada dimensao
p = -10:1:10;

% Definir a funcao como uma matriz nula
Quad = zeros( length(p) );

% Loop entre os nossos pontos 'p'
for i = 1:length(p)
    
    for j = 1:length(p)
        
        % Implemente o vetor 'a' e a funcao quadratica
        
    end
end

% Definir a funcao como uma matriz nula
QuadNorm = zeros( length(p) );

% Loop entre os nossos pontos 'p'
for i = 1:length(p)
    
    for j = 1:length(p)
        
        % Faca a mesma implementacao da funcao acima
        % E divida pelo produto escalar do vetor 'a'
        
    end
end

% Crie a superficie da funcao Quadratica
figure(1), clf;
                % use a funcao surf para plotar e shadding
title('Forma Quadradica a partir de uma matriz 2x2');
xlabel('a_1'), ylabel('a_2'), zlabel('Altura');
rotate3d on, axis square;

% % Crie a superficie da funcao Quadratica Normalizada
figure(2), clf;
                % use a funcao surf para plotar e shadding
title('Forma Quadradica Normalizada');
xlabel('a_1'), ylabel('a_2'), zlabel('Altura');
rotate3d on, axis square;


