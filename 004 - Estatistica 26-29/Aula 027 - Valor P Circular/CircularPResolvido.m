%%
%     Curso do canal ExataMenteS
%     Aula 27 - Valor P Circular
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%

% Definindo n & z
n = 1:1000;
z = linspace(0,1,999);

% Inicializando
[f,fa] = deal( zeros(length(n), length(z)));

for i = 1:length(n)

    for j = 1:length(z)
 
        f(i,j) = exp( sqrt( 1 + 4*n(i) + 4*(n(i)^2 - ( n(i)*z(j))^2) ) - (1+2*n(i)) );
        fa(i,j) = exp( -n(i) * z(j)^2 );
        
    end
end

% Plot a diferenca entre os dois
figure(1), clf
subplot(131)
contourf(z,n,f,40,'linecolor','none')
axis square, set(gca,'clim',[0 1])
xlabel('Z'), ylabel('N')
colorbar
title('Formula Completa')

subplot(132)
contourf(z,n,f,40,'linecolor','none')
axis square, set(gca,'clim',[0 1])
xlabel('Z'), ylabel('N')
colorbar
title('Aproximacao')

subplot(133)
contourf(z,n,f-fa,40,'linecolor','none')
axis square, set(gca,'clim',[-1 1]/20)
xlabel('Z'), ylabel('N')
colorbar
title('Diferenca')
