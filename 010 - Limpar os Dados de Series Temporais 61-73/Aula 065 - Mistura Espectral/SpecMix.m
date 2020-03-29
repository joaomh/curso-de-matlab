%%
%     Curso do canal ExataMenteS
%     Aula 65 - Mistura Espectral
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Number of points
n = 1000;

% Create signal as integrated noise
[SimulationSignal,RealSignal] = 

% Remove a specified window
RemoveTime = [ 200 350 ];
RealSignal() = 


% A introduction to Fast Fourier Transform
% We'll work on FFT in the next sections don't panic
% FFTs of previous and post window data
fftPrevious = fft();
fftPost     = fft();

% Interpolated signal 
% Combination of mixed FFTs and straight line
InterpData = detrend();
LineData  =  
             % Linear equation   y = ax + b

% Sum the two components
LinInterp = InterpData + LineData;

% Interpolated piece into the signal
FilterSignal = RealSignal;
FilterSignal(RemoveTime(1):RemoveTime(2)) = LinInterp;

figure(1), clf
plot(1:n,[SimulationSignal RealSignal+5 FilterSignal+7], 'linew', 2)
legend({'Original';'Real Signal (error)';'Filtered'})
zoom on
