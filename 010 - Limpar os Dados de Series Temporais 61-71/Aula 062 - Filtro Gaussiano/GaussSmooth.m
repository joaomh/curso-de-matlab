%%
%     Curso do canal ExataMenteS
%     Aula 62 - Filtro Gaussiano
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Gauss Smooth
% Create signal
FreqHz = 1000; % Hz
time  = 0:1/FreqHz:5;
N     = length(time);
P     = 5; % poles for random interpolation, this gives the up and down of the signal

% Noise level
NoiseAmp = 5; 

% Amplitude modulator and noise level
Ampl   = interp1(rand(P,1),linspace(1,P,N));     % use interp1 to create a p-pole time series
Noise  = NoiseAmp * randn(size(time));           % random numbers scaled by noiseamp
Signal = Ampl .* sin( 2*pi * time * 5 ) + Noise; % ampl times sine wave plus noise

% Initialize filtered signal vector
FilterSignal = zeros(size(Signal)); % zeros( size(signal) )
Sigma = 25;
k = 30;
GaussTime = 
Gauss = exp( -(4*log(2)*GaussTime.^2) ./ Sigma^2 );
GaussNorm = 

% Implement the Gauss Smooth 
for i = k+1:N-k-1
    % Each point is the average of k surrounding points
    FilterSignal(i) =    ;
end

% Plot the signals
figure(2), clf, hold on
plot(time,Signal, time, FilterSignal, 'linew', 2)
legend({'Signal';'Filtered'})
zoom on
