%%
%     Curso do canal ExataMenteS
%     Aula 56 - Limites
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%% 

% Create symbolic function

fx = 

% Plot
figure(1), clf
fplot(fx,[0 10],'linew',2)

% Compute the limit as x->a
a = 2;
lim = 

% Plot that limit as red dashed cross-hairs
hold on
plot(get(gca,'xlim'),[1 1]*0,'r--')

%%
% Limit of a 3D function

fxy = 
% Plot
figure(2), clf
shading interp
colormap jet
h = fsurf(fxy, [-pi, pi]);

% Compute the limit as x->a
a = -pi/2;
limit(fxy,y,a)

%%
% Limit of tan(x)
figure(3), clf
% Define function and plot it
fx = tan(x);
fplot(fx, [-pi pi], 'linew', 2)

% Limit with no input; how to interpret the output?
limit(fx)

% Compute limit as x->pi/3
a = pi/3;
lim2a = 

% Plot that limit as dashed lines
hold on
plot(get(gca,'xlim'),[1 1]*a,'r--')

% Determine what happens as f(x) approaches x=pi/2 from left and right


