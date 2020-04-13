%%
%     Curso do canal ExataMenteS
%     Aula 83 - Convolucao de Wavelet
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Signal
freqHz = 1000;
time  = -3:1/freqHz:3;
nPoints  = length(time);
gauss = exp(-time.^2)*10+10;
gauss = gauss + linspace(0,10,nPoints);
signal  = sin( 2*pi * ( time + cumsum(gauss/freqHz)) );

% Frequencies for TF analysis
nFreq = 50; % 50 frequencies
frecVec  = linspace(3,35,nFreq);

% Initialize matrices for wavelet and time-frequency results
[wavelets,timeFreq] = deal( zeros(nFreq,nPoints) );

% Complex Morlet wavelet 
for i = 1:nFreq
    
    % Sigma of Gaussian (number of cycles = 13)
    sigma = 5/(2*pi*frecVec(i));
    % create complex wavelet
    wavelets(i,:) = exp(1j*2*pi*time*frecVec(i)) .* exp(-time.^2/(2*sigma^2));
    
end

% Image of the wavelets
figure(1), clf
contourf(time,frecVec,abs(wavelets),40,'linecolor','none')
xlabel('Time (s)'), ylabel('Frequency (Hz)')
title('Real part of wavelets')
colormap jet

% Parameters conv
nConv = 2*nPoints - 1;
halfPoints = floor(nPoints/2)  + 1;
signalXfourier = fft(signal,nConv);

% Convolution per frequency
for i = 1:nFreq

    % FFT
    waveX = 
    waveX = 

    % Manual convolution
    convres = ifft(  );
    convres = 
    
    % Amp from complex signal
    timeFreq(i,:) = 
end
    
% Plot in time domain
figure(2)
subplot(411)
plot(time,signal,'linew',1)
xlabel('Time (s)')
title('Time-domain signal')

% Plot the time-frequency response
subplot(4,1,[2 3 4])
contourf(time,frecVec,timeFreq,10,'linecolor','none')
xlabel('Time (s)'), ylabel('Frequency (Hz)')
title('time-frequency power')
colormap jet