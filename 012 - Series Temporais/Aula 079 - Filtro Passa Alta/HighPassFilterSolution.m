%%
%     Curso do canal ExataMenteS
%     Aula 79 - Filtro Passa Alta
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% signal parameters
freqHz = 1000; % Hz
time  = 0:1/freqHz:10; 
nPoints = length(time);

% Brownian
signal = cumsum( randn(nPoints,1) );

% Filter parameters
fCutoffHz  = 15;     % Cutoff freq hz
proportion = .2;    % Proportion

% Filter shape is 0's and 1's for each node in the filter shape
filterShape = [ 0 0 1 1 ];

% Filter frequencies vector can be specified in Hz
% We need to normalize
filterFreq  = [ 0 fCutoffHz fCutoffHz*2  freqHz/2 ] / (0.5*freqHz);
filterOrder = 20*fCutoffHz;

% Create filter kernel and apply to data
filterKernel = firls(filterOrder, filterFreq, filterShape);
filterTS = filtfilt(filterKernel,1,signal);

% Compute the power spectrum of the filter kernel
filterPower = abs(fft(filterKernel)).^2;

% Compute the frequencies vector and remove negative frequencies
freqHzVec      = linspace(0,freqHz/2,floor(filterOrder/2+1));
filterPower = filterPower(1:length(freqHzVec));

% Plot
figure(1), clf
plot(time, [ signal filterTS ]);
xlabel('Time (sec.)'), ylabel('Amplitude')
title('Time domain')
legend({'Original';'Filtered'})

% Plot filter kernel in the time domain
figure(2), clf
plot(filterKernel,'linew',2)
xlabel('Time points')
title('Filter kernel')
set(gca, 'xlim', [0 filterOrder+0.5]);

% Plot amplitude spectrum of the filter kernel
figure(3), clf
subplot(211), hold on
plot(freqHzVec,filterPower,'ks-','linew',2,'markerfacecolor','w')
plot(filterFreq*0.5*freqHz,filterShape,'ro-','linew',2,'markerfacecolor','w')

% Freq cutoff
plot(fCutoffHz*[1 1],get(gca,'ylim'),'--k')

set(gca,'xlim',[0 fCutoffHz*4],'ylim',[-.05 1.05])
xlabel('Frequency (Hz)'), ylabel('Filter gain')
legend({'Actual';'Ideal'})
title('Frequency response of filter')

% Bode plot
subplot(212), hold on
plot(freqHzVec,10*log10(filterPower),'ks-','linew',2,'markersize',10,'markerfacecolor','w')
plot(fCutoffHz*[1 1],get(gca,'ylim'),'--k')
set(gca,'xlim',[0 fCutoffHz*4])
xlabel('Frequency (Hz)'), ylabel('Filter gain (dB)')
title('Frequency response of filter')

