%%
%     Curso do canal ExataMenteS
%     Aula 61 - Filtros de Media
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Intro
figure(1), clf

t = (0:0.1:10)';
x = sawtooth(t);
y = awgn(x,10,'measured');
plot(t,[x y])
legend('Original Signal','Signal with AWGN')

%% Mean Filter
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
FilterSignal = Signal; % zeros( size(signal) )

% Implement the running mean filter
k = 30; 
for i = k+1:N-k
    % Each point is the average of k surrounding points
    FilterSignal(i) = mean( Signal(i-k:i+k) );
end

% Plot the signals
figure(2), clf, hold on
plot(time,Signal, time, FilterSignal, 'linew', 2)
legend({'Signal';'Filtered'})
zoom on
