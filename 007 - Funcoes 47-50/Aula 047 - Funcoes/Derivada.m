function [dx1, dx2] = Derivada(x)
% [dx1, dx2] = Derivada(x)
% Essa funcao retorna a primeira e segunda derivada
% Ambas com o mesmo tamanho do nosso vetor de dados inicial
% 
% O input deve ser um vetor
%               x - um vetor numerico
% Output
%         dx1 - Primeira Derivada
%         dx2 - Segunda Derivada

% % https://github.com/joaomh

% Verificar se o input e numerico
if ~isnumeric(x)
    help Derivada
    error('Input tem que ser Numerico')
end

% Verificar se o input e um vetor
if sum ( size(x)>1 ) > 1
    help Derivada
    error('Input tem que ser Vetor')
end
% Calcular as Derivadas
% Forcar a ser um vetor linha
dx1 = diff(x);
if size(x,1) > size(x,2)   % Caso seja um vetor coluna
    dx1 = [dx1; dx1(end)]; % Acrecenta o valor final repetido
    dx1 = dx1'
else
dx1 = [dx1 dx1(end)];
end

dx2 = diff(dx1);
dx2 = [dx2 dx2(end)];    % Acrecenta o valor final repetido
end
