%%
%     Curso do canal ExataMenteS
%     Aula 81 - Espectrograma de Audios
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Load the data
load data.mat
% Convert to a sound file
filename = 'data.wav';
audiowrite(filename,y,Fs);
clear y Fs
[signal,fs] = audioread('data.wav');

% Hear it
 soundsc(signal,fs)

% Create a time vector based on the data sampling rate
n = length(signal);
timeVec = (0:n-1)/fs;

% Plot the data
figure(1), clf
subplot(211)
plot(timeVec,signal)
xlabel('Time (sec.)')
title('Time domain')
set(gca,'ytick',[],'xlim',timeVec([1 end]))

% Compute the power spectrum
hzVec = linspace(0,fs/2,floor(n/2)+1);
signalPow = abs(fft( detrend(signal(:,1)) )/n).^2;

% now plot it
subplot(212)
plot(hzVec,signalPow(1:length(hzVec)),'linew',2)
xlabel('Frequency (Hz)')
title('Frequency domain')
set(gca,'xlim',[0 8000])

% Spectrogram function
[powSpect,freqSpec,timeSpec] = spectrogram(detrend(signal(:,1)),hann(1000),100,[],fs);

% Show the time-frequency power plot
figure(2), clf
imagesc(timeSpec,freqSpec,log(abs(powSpect.^2)))
axis xy
set(gca,'clim',[-1 1]*5,'ylim',freqSpec([1 dsearchn(freqSpec,15000)]),'xlim',timeSpec([1 end]))
xlabel('Time'), ylabel('Frequency')
colormap jet

% Compare spectra from FFT vs. summed spectrogram
figure(3), clf
hold on
plot(hzVec,signalPow(1:length(hzVec)),'linew',2)
plot(freqSpec,10*sum(abs(powSpect/n).^2,2),'r','linew',3)
xlabel('Frequency (Hz)')
title('Frequency domain')
set(gca,'xlim',[0 8000])
legend({'FFT power';'\Sigma spectrogram'})


