%%
%     Curso do canal ExataMenteS
%     Aula 50 - Extrair partes de um Codigo
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%%

% Open the function
open median;

% Some data
% The input must be 'odd'
x = randn(101,1);

% Copying the code from median
x = sort(x);                 % Sort the data
nCompare = length(x);
half = floor(nCompare/2);    % Get the index before the median
y = x(half+1);               % The median will be the next index

