%%
%     Curso do canal ExataMenteS
%     Aula 74 - Transformada Rapida de Fourier FFT
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Signal
% Number of time points
Npoints   = 10000; % BE CAREFUL WITH THIS NUMBER!
                   % DTFT is O(n^2)
Signal = randn(1,Npoints);

%  DTFT
% Timer


% Init
FourierTime = (0:Npoints-1)/Npoints;
FourierCoefs   = zeros(size(Signal));

for i = 1:Npoints
    ComplexSineWave = exp( -1j*2*pi*(i-1)*FourierTime );
    FourierCoefs(i) = sum( Signal.*ComplexSineWave );
end

% Timer for DTFT


% Time the FFT

FourierCoefsFFT = fft(Signal);


%% The Fast Inverse Fourier transform
% IFFT

% Signal
FreqRange = 1000;
time  = 0:1/FreqRange:3;
SineWave1 = 3 + sin( 2*pi*15*time );
SineWave2 = 3*cos( sin(2*pi*5*time)+time );
Signal  = SineWave1 .* SineWave2 .* ( SineWave1 + SineWave2 );

% Reconstructed signal using IFFT
ReconSig = 

figure(1), clf
plot(time,Signal,'r-','linew',2)
hold on
plot(time,ReconSig,'bo','markersize',3)
xlabel('Time (sec.)'), ylabel('Amplitude')
legend({'Original';'Reconstructed'})
zoom on
