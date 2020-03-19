%%
%     Curso do canal ExataMenteS
%     Aula 21 - Calculo de Pi Utilizando Serie de Lebniz
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%

% Inserir um texto para o usuario
% Deixar que ele escolha o numero de interacoes
% Procure por 'input' no help do MATLAB
texto = 'Digite o numero de interacoes: ';
int = input(texto);

% Calculo de Pi pela Serie de Leibniz
% Bonus
% Vamos comparar o nosso 'p' com o 'pi' do MATLAB
% Plot um gráfico do erro ( diferenca entre os 2 ) pelo numero de int

p = 0;               % Valor inicial de Pi
erro = zeros(int,1); % Vetor do erro
for i = 0:int
    
    p = p +  4 * ( (-1)^(i) / (2*i + 1) ); % Calculo pela Serie
    erro(i+1,1) = abs ( pi - p );          % Calculo do erro
    
end

% Plot do erro
plot(linspace(1,int,int+1), erro, 'linew',2);



