%%
%     Curso do canal ExataMenteS
%     Aula 77 - FFT em Equacoes Diferenciais
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Approximate derivative using Finite Difference
n = 128;
L = 30;
dx = L/(n);
x = -L/2:dx:L/2-dx;
f = cos(x).* exp(-x.^2/25);
df = -(sin(x).* exp(-x.^2/25) + (2/25)*x.*f);

dFD = zeros(1,n); % Finite Difference

for Nwave = 1:length(df)-1
    dFD(Nwave) = (f(Nwave+1)-f(Nwave))/dx;
end

% Derivative using FFT (spectral derivative)
FCoef = fft(f);
Nwave = (2* pi/L)*(-n/2:n/2-1);
Nwave = fftshift(Nwave); % Re-order fft frequencies
dfCoef = 1j*Nwave.*FCoef;
dfFFT = real(ifft(dfCoef));

% Plot
plot(x,df,'k','LineWidth',2), hold on
plot(x,dFD,'b--','LineWidth',2)
plot(x,dfFFT,'r--','LineWidth',2)
legend('True Derivative','Finite Diff','FFT Derivative')

%% Heat equation
a = 1;      % Thermal diffusivity constant
L = 100;    % Length of domain
N = 1000;   % Number of discretization points
dx = L/N;
x = -L/2:dx:L/2-dx; % Define x domain

% Define discrete wavenumbers
Nwave = (2* pi/L)*(-N/2:N/2-1);
Nwave = fftshift(Nwave); % Re-order fft wavenumbers

% Initial condition
u0 = 0*x;
u0((L/2 - L/10)/dx:(L/2 + L/10)/dx) = 1;

% Simulate in Fourier frequency domain
t = 0:0.1:10;
u = zeros(a+L,N);
[t,uhat] = ode45(@(t,uhat)rhsHeat(t,uhat,Nwave,a),t,fft(u0));
for i = 1:length(t) % iFFT to return to spatial domain
    u(i,:) = ifft(uhat(i,:));
end

figure(1), clf
colormap jet
waterfall((u(1:10:end,:)));
xlabel('x'), ylabel('t'), zlabel('u(t,x)')
figure(2), clf
colormap jet
imagesc(flipud(u));
xlabel('x'), ylabel('t')
