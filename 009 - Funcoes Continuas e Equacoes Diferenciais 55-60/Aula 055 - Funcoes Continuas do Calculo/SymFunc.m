%%
%     Curso do canal ExataMenteS
%     Aula 55 - Funcoes Continuas do Calculo
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%% 

% Plotting implicit functions
% Define function as anonymous
% fimplicit -> 2D
figure(1), clf
fx = 
% fx = @(x,y) (x.^2 + y.^2).^2 - x.^2 + y.^2';
h = 
set(h,'linew',2)

% fimplicit3 -> 3D
figure(2), clf
fx = 
h = 
rotate3d on, axis image
set(h,'linestyle','none')

% Using ezplot
% ezplot -> 2D
figure(3), clf
fx = 
h = 
set(h,'linew',2)

% Using ezplot3
% ezplot3 -> 3D
figure(4), clf
h = 
set(h,'linew',2)

% Using fplot
% fplot -> 2D
figure(5), clf
fx = 
h = 
set(h,'linew',2)

% fplot3 -> 3D
figure(6), clf
xt = 
yt = 
zt = 

% Using surf
figure(7), clf
h = 
shading interp
colormap jet

% fsurf 3D
figure(8), clf
fxy = 
shading interp
colormap jet

% Polar plot
% Cardioid as anonymous function
figure(9), clf
cardioid = 
h = 
set(h,'linew',2,'color','r')
