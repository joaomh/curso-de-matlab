%%
%     Curso do canal ExataMenteS
%     Aula 44 - Superficie Complexa
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%%

% Definir os eixos X e Y
x = linspace(-10,10,100);
y = linspace(-10,10,100);

% Iniciar a superficie
ComplexSurf = zeros(length(x), length(y));

% Loop
for i = 1:length(x)
    for j = 1:length(y)
        
        % Numero complexo
        z = complex( x(i), y(j) );
        
        % Calculo da superfice em cada ponto
        ComplexSurf(i,j) = sin(z) / z;
    end
end

% Superficie para plotar, com Loop
ComplexSurfP = real(ComplexSurf) - abs(ComplexSurf);

% Utilizando bsxfun
z = bsxfun(@plus, x, 1j*y')';
%  Alternativa a bsxfun
% z = (x + 1j*y')';
BComplexSurf = sin(z) ./z;
BComplexSurfP = real(BComplexSurf) - abs(BComplexSurf);

% Plot com Loop
figure(1), clf
surf(y,x,ComplexSurfP)
shading interp, rotate3d on
colormap jet
xlabel('Real'), ylabel('Img'), zlabel('f(z)')
axis square
title('Com Loop')

% Plot sem Loop
figure(2), clf
surf(y,x,BComplexSurfP)
shading interp, rotate3d on
colormap jet
xlabel('Real'), ylabel('Img'), zlabel('f(z)')
axis square
title('Sem Loop')