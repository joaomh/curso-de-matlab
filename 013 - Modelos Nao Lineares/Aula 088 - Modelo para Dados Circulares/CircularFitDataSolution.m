%%
%     Curso do canal ExataMenteS
%     Aula 88 - Modelo para Dados Circulares
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

N = 100;

% Circle perimeters
angle = linspace(0,2*pi,N); % theta (angles)
r  = 2; % radius

% Polar coord
x = r*cos(angle) + randn(1,N)/5;
y = r*sin(angle) + randn(1,N)/5;

% The circle
figure(1), clf
plot(x,y,'mo')
axis square
axis off

% Initialize radius and setup function min
circleRadius = 6;
funch = @(circleRadius) myFitCircData(circleRadius,[x; y]);

% Fit the model using lsqnonlin
figure(1), clf
lsqnonlin(funch, circleRadius);

%% Oval Data
radiusO = [1 3];
phiAngle = [ pi/3 pi/7 ];
x = radiusO(1)*cos( angle + phiAngle(1) ) + randn(1,N)/5;
y = radiusO(2)*sin( angle + phiAngle(2) ) + randn(1,N)/5;

figure(3), clf
plot(x,y,'mo')
axis square

initParmsOval = [ 2 2 pi pi ];
funch = @(initParmsOval) myFitOvalData(initParmsOval,[x; y]);
lsqnonlin(funch, initParmsOval);
