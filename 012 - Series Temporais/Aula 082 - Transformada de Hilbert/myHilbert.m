function hilbertX = myHilbert(signal,n)
%%HILBERT  Discrete-time analytic signal via Hilbert transform.
%   X = HILBERT(Xr) computes the so-called discrete-time analytic signal
%   X = Xr + j*Xi such that Xi is the Hilbert transform of real vector Xr.
%  
%
%  FFT
fourierCoef = fft(signal);
% Create a copy that is multiplied by the complex operator
complexCopy = 1j * fourierCoef;

% Find indices of positive and negative frequencies
positiveFreq = 2:( floor(n/2) + mod(n,2) );
negativeFreq = ( ceil(n/2) + 1 + ~mod(n,2) ):n;

% Rotate Fourier coefficients
fourierCoef(positiveFreq) = fourierCoef(positiveFreq) + complexCopy(positiveFreq)*-1j;
fourierCoef(negativeFreq) = fourierCoef(negativeFreq) + complexCopy(negativeFreq)*1j;

% Take inverse FFT
hilbertX = ifft( fourierCoef );
end

