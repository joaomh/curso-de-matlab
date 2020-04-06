%%
%     Curso do canal ExataMenteS
%     Aula 69 - Dados 3D
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Dataset
 n = 100; 
 [X,Y] = meshgrid(1:n);

% Functions
% Gauss
Sigma = 2*(n/pi)^2;
FuncGauss = exp( -((X-0.5*n).^2 + (Y-0.5*n).^2) / Sigma);

% Sine
FuncSin = 0.3*(1 + sin( 2*pi * X/n ));

% Linear
FuncLin = 0.5 * Y ./ n;

% Sum
FuncSum = FuncGauss + FuncSin + FuncLin;

% Plot
figure(1), clf
colormap jet
subplot(231), imagesc(FuncGauss), axis square
title('Gaus')
subplot(232), imagesc(FuncSin), axis square
title('Sine')
subplot(233), imagesc(FuncLin), axis square
title('Lin')
subplot(223), imagesc(FuncSum), axis square
title('Sum')


% Create the time series
k = 20; % Number of poles for random amplitudes
NumberPoints = 300;
TimeSeries1 = 
TimeSeries2 = 
TimeSeries3 = 

% Plot
figure(2), clf, hold on
plot(1:NumberPoints,TimeSeries1,'linew',2)
plot(1:NumberPoints,TimeSeries2,'linew',2)
plot(1:NumberPoints,TimeSeries3,'linew',2)
title('Time Series')

% Create the multivariate dataset
% Loop over time 
MultiData = zeros([ NumberPoints n n ]);
for i = 1:NumberPoints
    MultiData(i,:,:) = 
end

% Show in a video in the previous figure
figure(1)
subplot(224)
% Create an image handle
ImgHandle =
set(gca,'clim',[-1 1]*2)
axis square
% Create handle to the title
TitleHandle = 

for i = 1:NumberPoints
    
end
