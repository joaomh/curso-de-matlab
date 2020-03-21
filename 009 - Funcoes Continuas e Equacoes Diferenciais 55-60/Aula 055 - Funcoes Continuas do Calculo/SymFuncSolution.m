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
fx = @(x,y) x^2 + y^2 -2;
% fx = @(x,y) (x.^2 + y.^2).^2 - x.^2 + y.^2';
h = fimplicit(fx);
set(h,'linew',2)

% fimplicit3 -> 3D
figure(2), clf
fx = @(x,y,z) x.^2 + y.^2 - z.^2;
h = fimplicit3(fx);
rotate3d on, axis image
set(h,'linestyle','none')

% Using ezplot
% ezplot -> 2D
figure(3), clf
fx = 'sin(x) + tan(x/2)';
h = ezplot(fx);
set(h,'linew',2)

% Using ezplot3
% ezplot3 -> 3D
figure(4), clf
h = ezplot3('cos(t)','t*sin(t)','sqrt(t)');
set(h,'linew',2)

% Using fplot
% fplot -> 2D
figure(5), clf
fx = @(x) sin(x) + tan(x)/10;
h = fplot(fx);
set(h,'linew',2)

% fplot3 -> 3D
figure(6), clf
xt = @(t) exp(-t/10).*sin(5*t);
yt = @(t) exp(-t/10).*cos(5*t);
zt = @(t) t;
fplot3(xt,yt,zt,[-10 10])

% Using surf
figure(7), clf
h = ezsurf('real(atan(x+i*y))');
shading interp
colormap jet

% fsurf 3D
figure(8), clf
fxy = @(x,y) sin(x)+cos(y);
shading interp
colormap jet
fsurf(fxy)

% Polar plot
% Cardioid as anonymous function
figure(9), clf
cardioid = @(t) 2*(1 - cos(t));
h = ezpolar(cardioid);
set(h,'linew',2,'color','r')
