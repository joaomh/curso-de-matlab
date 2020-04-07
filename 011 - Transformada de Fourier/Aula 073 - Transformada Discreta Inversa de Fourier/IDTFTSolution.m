%%
%     Curso do canal ExataMenteS
%     Aula 73 - Transformada Discreta Inversa de Fourier
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Fourier transform
% create the signal
FreqHz  = 1000; % hz
time   = 0:1/FreqHz:2; % time vector in seconds
Npoints   = length(time); % number of time points
Signal = 10*sin( 2*pi*4*time ) +  5*sin( 2*pi*6.5*time );


% Init Fourier
FourierTime = (0:Npoints-1)/Npoints;
FourierCoefs   = zeros(size(Signal));

for i = 1:Npoints
    
    % Complex sine wave
    ComplexSineWave = exp( -1i*2*pi*(i-1)*FourierTime );
    
    % Fourier coeff
    FourierCoefs(i) = sum( Signal.*ComplexSineWave );
end

% Amplitudes
Ampl = abs(FourierCoefs) / Npoints;
Ampl(2:end) = 2*Ampl(2:end);

% Frequencies vector
HzVec = linspace(0,FreqHz/2,floor(Npoints/2)+1);

figure(1), clf
plot(HzVec,Ampl(1:length(HzVec)),'s-')
stem(HzVec,Ampl(1:length(HzVec)),'bs-','linew',3,'markersize',10,'markerfacecolor','w')
set(gca,'xlim',[0 10],'ylim',[-.01 12])
xlabel('Frequency (Hz)'), ylabel('Amplitude')

%% Inverse Fourier transform

% Initialize time-domain reconstruction
OrigSignal = zeros(size(Signal));

for i = 1:Npoints
    
    % create coefficient-modulated complex sine wave
    ComplexSineWave = FourierCoefs(i) * exp( 1j*2*pi*(i-1)*FourierTime );
    
    % sum them together
    OrigSignal = OrigSignal + ComplexSineWave;
end

% Divide by N
OrigSignal = OrigSignal/Npoints;

figure(2), clf
plot(time,Signal,'k','linew',3)
hold on
plot(time,real(OrigSignal),'bo')
legend({'Original';'Reconstructed'})
xlabel('Time (s)')

%% Reconstructed the signal using some video

% Parameters
FreqHz = 1000;
time  = 0:1/FreqHz:3;
Npoints  = length(time);
SineOne = 3*sin(2*pi*22*time);
CosineOne = 8*cos( sin(2*pi*31*time) + time );
Signal  = SineOne .* CosineOne;

% Init the Fourier transform
FourierTime = (0:Npoints-1)/Npoints;
FourierCoefs   = zeros(size(Signal));

% Loop
for i = 1:Npoints
    ComplexSineWave = exp( -1i*2*pi*(i-1)*FourierTime );
    FourierCoefs(i) = sum( Signal.*ComplexSineWave ) / Npoints;
end

% Frequencies vector (Hz) 
HzVec = linspace(0,FreqHz,Npoints);

% Plot
figure(3), clf
subplot(211)
plot(time,Signal,'linew',2), hold on
SigHandle = plot(time,Signal,'b','linew',2);
xlabel('Time (s)')
title('Time domain')
subplot(212)
AmpHandle = plot(1,'k','linew',2);
set(gca,'xlim',HzVec([1 end]),'xtick',0:100:900,'xticklabel',[0:100:500 400:-100:100])
title('Frequency domain')
xlabel('Frequencies (Hz)')


% Initialize the reconstructed signal
OrigSignal = zeros(size(Signal));
% Loop
for i=1:Npoints
    
    % Coefficient-modulated complex sine wave
    ComplexSineWave = FourierCoefs(i) * exp( 1i*2*pi*(i-1)*FourierTime );
    
    OrigSignal = OrigSignal + ComplexSineWave;
    
    % For each frequencies
    if i<dsearchn(HzVec',100) || i>dsearchn(HzVec',FreqHz-100)
        set(SigHandle,'YData',real(OrigSignal))                            % Update signal
        set(AmpHandle,'XData',HzVec(1:i),'YData',2*abs(FourierCoefs(1:i))) % Update amplitude spectrum
        pause(.05)
    end
end