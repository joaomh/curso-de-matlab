%%
%     Curso do canal ExataMenteS
%     Aula 14 - Matriz de Hankel
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%

% Dimensao do vetor e da matriz
m = 7;

% Vetor inicial
a =  randn(m,1) ;

% Funcao do matlab
H1 = hankel( a, a([ end 1:end-1 ]) );

% Loop
H2 = zeros(numel(a));
for i = 1:m
    
    H2(i,:) =  a([ i:m 1:i-1 ]);
    
end

% Verificar se H1 e H2 sao iguais
H1 - H2

% Outro jeito de criar a matriz de Hankel
a2 = [ a; a; a; a; ];
for i = 1:m
    
    for j = 1:m
        
        H3(i, j) = a2(j + i - 1);
        
    end
end
% Plot do vetor 'a' e da Matriz de Hankel
figure(1), clf
subplot(151)
imagesc(a);
axis image,
set(gca,'xtick',[],'ytick',[])
title('a')

subplot(1,5,2:5)
imagesc(H3);
axis image,
set(gca,'xtick',[],'ytick',[])
title('Hankel(a)')


