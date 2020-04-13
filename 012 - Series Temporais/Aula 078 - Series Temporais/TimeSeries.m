%%
%     Curso do canal ExataMenteS
%     Aula 78 - Series Temporais
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Convolution
% Number of time points
n = 10000;

% Signal Brownia
signal = 

% Kernel is a Gaussian
k = 30;
kernel = exp(  );
kernel = 

% Flip the kernel backwards
kernelBack = zeros();
for i = 
    
     kernelBack() = ;
end


% Plot
figure(1), clf
plot(-k:k,kernel,'r','linew',2)
title('Convolution kernel')
xlabel('Time points'), ylabel('Amplitude')

% Convolution:
convSize = zeros(size(signal));
for i = 
    
    % Part of the signal
    signalPart = signal();
    
    % Convolution at this point is the dot product
    convSize(i) = dot(  );
end
    
% Plot
figure(2), clf
plot(1:n,signal, 1:n,convSize,'linew',3)
xlabel('Time'), ylabel('Amplitude')
title('Time domain')

% FFTs of signal and kernel
nConv = 
sigX = fft(signal,nConv);
krnX = fft(kernel',nConv);
freqHz   = linspace(0,1,nConv); % normalized units

% Convolution is inverse of multiplied spectra
convSize2 = ifft(  );
convSize2 = convSize2(); % cut off edge

% Plot normalized amplitude spectra
figure(3), clf
plot(freqHz,abs(sigX)/max(abs(sigX)),'linew',2)
hold on
plot(freqHz,abs(krnX)/max(abs(krnX)),'linew',2)
set(gca,'xlim',[0 .2])
legend({'Signal';'Kernel'})
xlabel('Frequency (norm.)'), ylabel('Amplitude (norm.)')
title('Frequency domain'), hold on
plot(1:n,convSize2,'k','linew',2)
legend({'Signal';'Conv (time)';'Conv(freq)'})

%% Mean Filter
% create noisy signal
n = 10000;
signal = randn(n,1);

% filter kernel size
% acually creates a k*2+1 filter
k = 50; 

% Time domain mean filter
tic; % start timer
filterSignalT = zeros( size(signal) );
for i = k+1:n-k
    
    filterSignalT(i) = mean(signal(i-k:i+k));
    
end
tt(1) = toc;

% Convolution
tic; % start timer
kernel = ones(2*k+1,1) / (2*k+1);
nConv  = ( 2*k + 1 ) + n - 1; 

sigX = fft(signal,nConv);
krnX = fft(kernel,nConv);

filterSignalFHz = ifft( sigX .* krnX );
filterSignalFHz = filterSignalFHz( k+1:end-k ); % cut off the edges or wings
tt(2) = toc; % end timer


% Plot
figure(4), clf
subplot(211)
plot(1:n,[signal filterSignalT filterSignalFHz])
zoom on
legend({'Original';'Time-domain filter';'Frequency-domain filter'})
title([ 'Time and frequency domain filtered signals correlate at r=' num2str(corr(filterSignalFHz,filterSignalT)) ])

% Plot the time
subplot(212)
bar(tt)
set(gca,'xlim',[.5 2.5],'xtick',1:2,'XTickLabel',{'Time';'Freq'})
ylabel('Computation time (s)')
