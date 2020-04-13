%%
%     Curso do canal ExataMenteS
%     Aula 85 - COnjunto de Mandelbrot
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Mandelbrot
n = 1000; 
k =   40; % number of iterations

% Define the real and img vectors
realVec = linspace(-2,1,n);
imgVec  = linspace(-1.5,1.5,n);

% Matrices
[X,Y] = meshgrid(realVec,imgVec);
 C    = complex(X,Y); 
[Z,M] = deal( zeros(n) ); 


% Show the M matrix
figure(1), clf
colormap jet
axis off,
imgh = imagesc(realVec,imgVec,M);
xlabel('Real'), ylabel('Imag')
axis square
set(gca,'clim',[0 k])


% Loop
for i = 1:k
    
    % Compute quadratic map
    Z = Z.^2 + C;
    
    % Find elements exceeding |Z|>2 at this iteration
    % and set those elements in M to be the iteration
    M( abs(Z)>2 & M==0 ) = i;

    % Update image
     set(imgh,'Cdata',M)
     pause(.1)
end

%% Plot
figure(1), clf
colormap jet
subplot(221), imagesc(realVec,imgVec,real(Z))
axis square, title('Real part')
subplot(222), imagesc(realVec,imgVec,imag(Z))
axis square, title('Imaginary part')
subplot(223), imagesc(realVec,imgVec,abs(Z))
axis square, title('Magnitude')
subplot(224), imagesc(realVec,imgVec,angle(Z))
axis square, title('Phase')

