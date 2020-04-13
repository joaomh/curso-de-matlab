function  = myHilbertEmpty()
%%HILBERT  Discrete-time analytic signal via Hilbert transform.
%   X = HILBERT(Xr) computes the so-called discrete-time analytic signal
%   X = Xr + j*Xi such that Xi is the Hilbert transform of real vector Xr.
%  
%
%  FFT
fourierCoef = 
% Create a copy that is multiplied by the complex operator
complexCopy = 

% Find indices of positive and negative frequencies
positiveFreq = 
negativeFreq = 

% Rotate Fourier coefficients
fourierCoef(positiveFreq) = 
fourierCoef(negativeFreq) = 

% Take inverse FFT
hilbertX = 
end

