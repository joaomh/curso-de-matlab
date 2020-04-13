%%
%     Curso do canal ExataMenteS
%     Aula 80 - Serie Temporal Multiespectral
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% set parameters
freqHz = 1000; % sampling rate in Hz
time  = -2:1/freqHz:2;
nPoints = length(time);
freqVec  = [ 7.7 14.4 23.8 28 35.9 7.7 14.4 23.8 28 35.9 ]; % frequencies in Hz
ampVec  = [ 3.1 4.3  1.2  8.9 9.2 3.1 4.3 1.2 8.9 9.2 ];             % Amplitudes
phsaVec  = randn(10,1)';

% Init
signal = zeros(1,nPoints);

% Loop over frequencies
for i = 1:length(freqVec)
    
    % Interpolated noise
    AM = ampVec(i) * interp1();
    
    % Add the sines
    signal =  
    
end

% Plot
figure(1), clf
plot(time,signal,'b','linew',2)
xlabel('Time (s)'), ylabel('Amplitude')
