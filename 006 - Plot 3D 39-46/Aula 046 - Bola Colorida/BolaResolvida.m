%%
%     Curso do canal ExataMenteS
%     Aula 46 - Bola Colorida
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%%

% Centro e o raio da esfera
% E bom criar um fator de escala
% Para nao consumir muito processamento
Escala   = 0.1; 
Centro   = round([ .5 .5 .5 ] * 255*Escala);
Raio = round( .5 * 255*Escala);


% Indice da escala RGB
x = 0:255*Escala;
[R,G,B] = meshgrid( x - Centro(1), x - Centro(2), x - Centro(3) );


% Pontos como a esfera
distEsfera = sqrt( R.^2 + G.^2 + B.^2 ); % Distancia euclidiana
distEsfera = distEsfera < Raio;

% Converter subscripts para indices
[i,j,k] = ind2sub( size(distEsfera), find(distEsfera(:)) );

figure(1), clf
scatter3(i,j,k,30,[i j k]./(255*Escala),'filled');
axis square, rotate3d on
set(gca,'xlim',[0 255]*Escala,'ylim',[0 255]*Escala,'zlim',[0 255]*Escala);
xlabel('Vermelho'), ylabel('Verde'), zlabel('Azul')

% Converter o eixo em fracoes da cor
for i = 'xyz'
    ticklab = str2double( get(gca,[i 'TickLabel']) );
    set(gca,[i 'ticklabel'],round(100*ticklab/(255*Escala))/100,[i 'tick'],ticklab)
end
