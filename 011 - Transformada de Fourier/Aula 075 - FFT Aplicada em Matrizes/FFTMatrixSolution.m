%%
%     Curso do canal ExataMenteS
%     Aula 75 - FFT Matrizes e Filtro
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Dataset
time  = (0:300*2-1)/300;
nPoints = length(time);
nReps = 50;
Data = repmat( 5*sin(2*pi*15*time), nReps,1 );


% FFT of data along each dimension
DataX1 = fft(Data,[],1) / nPoints;
DataX2 = fft(Data,[],2) / nPoints;
Fhz = linspace(0,300/2,floor(nPoints/2)+1);

% check sizes
size(DataX1)
size(DataX2)

% Plot
figure(1), clf
subplot(311)
imagesc(Data)
xlabel('Time'), ylabel('Channel')
title('Time-domain signal')
subplot(312)
stem(Fhz,mean( 2*abs(DataX1(:,1:length(Fhz))) ,1),'k')
xlabel('Frequency'), ylabel('Amplitude')
title('FFT over channels')
subplot(313)
stem(Fhz,mean( 2*abs(DataX2(:,1:length(Fhz))) ,1),'k')
xlabel('Frequency'), ylabel('Amplitude')
title('FFT over time')

%% Filter Signal using FFT
dt   = .001;
time = 0:dt:1;
OrgSignal = sin(2*pi*50*time) + cos(2*pi*30*time); % Sum of 2 frequencies
NoiseSignal = OrgSignal + 5.5*randn(size(time));   % Add some noise

% Compute the Fast Fourier Transform FFT
nPoints = length(time);
FCoef = fft(NoiseSignal,nPoints);

% Compute the fast Fourier transform
PSD = FCoef.* conj(FCoef)/nPoints;             % Power spectrum
VecTime = 1/(dt*nPoints)*(0:nPoints);          % Frequencies vector
L = 1:floor(nPoints/2);


% Use the PSD to filter out noise
Idx      = PSD > 195;         % Find all freqs with large power
PSDclean = PSD .* Idx;        % Zero out all others
FCoef    = Idx .* FCoef;      % Zero out small Fourier coeffs. in Y
ffilt    = ifft(FCoef);       % Inverse FFT for filtered time signal

% Plots
figure(2), clf
subplot(3,1,1)
plot(time,NoiseSignal,'r','LineWidth',1.2), hold on
plot(time,OrgSignal,'k','LineWidth',1.5)
legend('Noisy','Clean')
subplot(3,1,2)
plot(time,NoiseSignal,'k','LineWidth',1.5), hold on
plot(time,ffilt,'b','LineWidth',1.2)
legend('No Filter','Filtered')
subplot(3,1,3)
plot(VecTime(L),PSD(L),'r','LineWidth',1.5), hold on
plot(VecTime(L),PSDclean(L),'-b','LineWidth',1.2)
legend('Noisy','Filtered')

figure(3), clf
plot(time,ffilt,'b','LineWidth',2)
hold on
plot(time,OrgSignal,'k','LineWidth',2)
legend('Filtered','Original')
