%%
%     Curso do canal ExataMenteS
%     Aula 82 - Transformada de Hilbert
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Number of points
n = 500;

% Signal is a sine wave plus low-amplitude noise
signalOrg = sin( 6 * linspace(0,2*pi,n) );
Noise = randn(1,n)/10;
signal = signalOrg + Noise;

hilbertx = myHilbert(signal,n);

% plot the real parts
figure(1), clf
subplot(311), hold on
plot(1:n,signal,'k','linew',2)
plot(1:n,real(hilbertx),'m','linew',2)
plot(1:n,real(hilbert(signal)),'rs','markerfacecolor','b')
title('Real part')


% plot the magnitudes
subplot(312), hold on
plot(1:n,abs(hilbertx),'k','linew',2)
plot(1:n,abs(hilbert(signal)),'rs','markerfacecolor','b')
title('Amplitude time series')


% plot the phase angles
subplot(313), hold on
plot(1:n,angle(hilbertx),'k','linew',2)
plot(1:n,angle(hilbert(signal)),'rs','markerfacecolor','b')
title('Phase angle time series')
xlabel('Time (a.u.)')

