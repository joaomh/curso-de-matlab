%%
%     Curso do canal ExataMenteS
%     Aula 63 - Filtros Mediano
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Median Filter
% create signal
FreqHz = 1000; % Hz
time  = 0:1/FreqHz:10;
N     = length(time);

% Points to replace with noise
NoiseReplace = .07; %  7%

% Find noise points
NoisePoints = randperm(N);
NoisePoints = NoisePoints( 1:round(NoiseReplace * N) );

% Generate signal
% replace points with noise
Signal = sin( 2*pi * 5 * time);
Amp = 30;
Signal(NoisePoints) = Amp*rand( size(NoisePoints) ) + 30;


% Hist to pick threshold
figure(1), clf
hist(Signal,300)

% Picked threshold
Threshold = 20;
SortSignal = sort(Signal);
ds = diff(SortSignal);
[~, idx] = max(ds);
Threshold = SortSignal(idx+1) - 1;

% Find data values above the threshold
FindThresh = find( Signal>Threshold );

% Initialize filtered signal
% As zero or the original Signal
FilterSignal = Signal;

% Loop
k = 30; % Kernel
for i = 1:length(FindThresh)
    
    % We must be careful with the idx of the matrix
    LowPoints = max(1,FindThresh(i)-k);
    UpPoints  = min(FindThresh(i)+k,N);
    
    % Compute median of surrounding points
    FilterSignal(FindThresh(i)) = median( Signal(LowPoints:UpPoints) );
    % FilterSignal(FindThresh(i)) = median( Signal(FindThresh(i)-k:FindThresh(i)+k) );
end


% Plot
figure(2), clf
plot(time,Signal, time,FilterSignal, 'linew',2)
legend({'Signal';'Filtered'})
zoom on

