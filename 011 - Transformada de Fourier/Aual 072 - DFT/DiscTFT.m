%%
%     Curso do canal ExataMenteS
%     Aula 72 - Transformada Discreta de Fourier
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Fourier Series

% Triangle wave
% Define domain
dx = 0.001;
L = pi;
x = (-1+dx:dx:1)*L;
n = length(x);
nQuart = floor(n/4);

% Define function that we'll aprox using fourier series
% Triangle wave
f = 0*x;
f(nQuart:2*nQuart) = 4*(1:nQuart+1)/n;
f(2*nQuart+1:3*nQuart) = 1-4*(0:nQuart-1)/n;
plot(x,f,'-k','LineWidth',1.5), hold on

% Compute Fourier series
CC = jet(20);
A0 = sum(f.*ones(size(x)))*dx;
funcFS = A0/2; % First term of Fourier Series
figure(1), clf
for i = 1:20
    
    
     % Fourier Series
     
    plot(x,funcFS,'-','Color',CC(i,:),'LineWidth',1.2)
    hold on
    
end
title('Fourier Series for Triangle wave')

% Square wave
dx = 0.01; L = 10;
x = 0:dx:L;
n = length(x); nQuart = floor(n/4);
f = zeros(size(x));
f(nQuart:3*nQuart) = 1;
A0 = sum(f.*ones(size(x)))*dx*2/L;
funcFS = A0/2;

for i = 1:100
    
    % Fourier Series
    
end

% Plot
figure(2), clf
plot(x,f,'k','LineWidth',2), hold on
plot(x,funcFS,'r-','LineWidth',1.2)
title('Fourier Series for Square wave')

%%
% The DTFT in loop-form
% Create the signal
FreqHz  = 1000; % hz
time  = 0:1/FreqHz:2;     % Time vector in seconds
Npoints   = length(time); % Number of time points
Signal =  10*sin( 2*pi*4*time ) +  5*sin( 2*pi*6.5*time );

% Init Fourier transform
FourierTime = (0:Npoints-1) / Npoints;
FourierCoefs   = zeros( size(Signal) );

for i = 1:Npoints
    
    % Complex sine wave
    ComplexSineWave = 
    
    % Compute dot product
    FourierCoefs(i) = 
    % these are called the Fourier coefficients
end

% Extract amplitudes
Ampl = 2*abs(FourierCoefs);

% Frequencies vector
HzVec = linspace(0,FreqHz/2,floor(Npoints/2)+1);

figure(3), clf
subplot(211)
plot(time,Signal,'b','linew',2)
xlabel('Time (s)'), ylabel('Amplitude')
title('Time domain')
subplot(212)
plot(HzVec,Ampl(1:length(HzVec)),'bs-','linew',3,'markersize',15,'markerfacecolor','w')
set(gca,'xlim',[0 10],'ylim',[-.01 12])
xlabel('Frequency (Hz)'), ylabel('Amplitude')
title('Frequency domain')

% MATLAB's fft output on top
FourierCoefs2 = fft(Signal)/Npoints;
Ampl2  = 2*abs(FourierCoefs2);
hold on
plot(HzVec,Ampl2(1:length(HzVec)),'mo','markerfacecolor','m')

% Plot Fourier coefficients complex plane
Coefs = dsearchn(HzVec',[4 4.5]');

% Extract magnitude and angle
Magnitude = abs(FourierCoefs(Coefs));
Phi = angle(FourierCoefs(Coefs));

figure(4), clf
plot( real(FourierCoefs(Coefs)) , imag(FourierCoefs(Coefs)) ,'o','linew',2,'markersize',10,'markerfacecolor','r');
axislims = max(Magnitude)*1.1;
set(gca,'xlim',[-1 1]*axislims,'ylim',[-1 1]*axislims)
grid on, hold on, axis square
plot(get(gca,'xlim'),[0 0],'k','linew',2)
plot([0 0],get(gca,'ylim'),'k','linew',2)
xlabel('Real axis')
ylabel('Imaginary axis')
title('Complex plane')

Points2     = 20; % Number of time points
FourTime = (0:Points2-1)/Points2;

figure(5), clf
for i = 1:Points2
    
    % Create complex sine wave
    ComplexSineWave2 = 
    subplot(5,4,i)
    h = plot(FourTime,real(ComplexSineWave2), FourTime,imag(ComplexSineWave2),'linew',2);
    set(h(1),'color','r')
    set(h(2),'color','b')
    set(gca,'ylim',[-1 1]*1.1,'ytick',[],'xtick',[],'xlim',FourTime([1 end]))
    axis square
    title([ 'Freq Idx ' num2str(i-1) ])
end
legend({'Real';'Imag'})
%% Matrix

n = 256;
w = exp(-j*2* pi/n);

% Slow
DFT = zeros(n);
for i = 1:n
    for j = 1:n
        
    end
end

% Fast
[I,J] = meshgrid(1:n,1:n);
DFT2 = 

figure(6)
colormap jet
imagesc(real(DFT2))
title('Real Parts of DFT')

%%
% Amplitude Spectrum & Power spectrum

% Signal
FreqHz = 1000;
time  = 0:1/FreqHz:.85;
nPoints3 = length(time);
Signal = 10*sin(2*pi*10*time);

% Fourier transform
FourierTime3 = (0:nPoints3-1)/nPoints3;
SignalX  = zeros(size(Signal));
for i = 1:nPoints3
    
    ComplexSineWave3 = 
    SignalX(i) = 
    
end

% Frequencies vector
Hz = linspace(0,FreqHz/2,floor(length(time)/2)+1);

% Amplitude
SignalAmp = 
SignalAmp(2:end) = 2*SignalAmp(2:end);

% Power
SignalPower = SignalAmp.^2;

% Plot
figure(7), clf
subplot(311)
plot(time,Signal,'b','linew',2)
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Time domain')

% Plot
subplot(312)
plot(Hz,SignalAmp,'rs-','linew',2,'markerfacecolor','w','markersize',10)
hold on
plot(Hz,SignalPower,'bs-','linew',2,'markerfacecolor','w','markersize',10)
set(gca,'xlim',[0 20])
legend({'Amplitude';'Power'})
xlabel('Frequency (Hz)')
ylabel('Amplitude & power')
title('Frequency domain')

% dB
subplot(313)
plot(Hz,10*log10(SignalPower),'ms-','linew',2,'markerfacecolor','w','markersize',10)
set(gca,'xlim',[0 20])
xlabel('Frequency (Hz)')
ylabel('Amplitude ( dB )')

