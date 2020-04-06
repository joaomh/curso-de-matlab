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
TimeSeries1 = interp1(randn(k,1),linspace(1,k,NumberPoints),'pchip')';
TimeSeries2 = interp1(randn(k,1),linspace(1,k,NumberPoints),'pchip')';
TimeSeries3 = interp1(randn(k,1),linspace(1,k,NumberPoints),'pchip')';

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
    MultiData(i,:,:) = TimeSeries1(i)*FuncSin + TimeSeries2(i)*FuncGauss...
                         + TimeSeries3(i)*FuncLin;
end

% Show in a video in the previous figure
figure(1)
subplot(224)
% Create an image handle
ImgHandle = imagesc(squeeze(MultiData(1,:,:)));
set(gca,'clim',[-1 1]*2)
axis square
% Create handle to the title
TitleHandle = title('Movie.');

for i = 1:NumberPoints
    set(ImgHandle, 'Cdata', squeeze(MultiData(i,:,:)))
    set(TitleHandle, 'String', ['Frame ' num2str(i) 'of ' num2str(NumberPoints) ])
    pause(.05)
end
