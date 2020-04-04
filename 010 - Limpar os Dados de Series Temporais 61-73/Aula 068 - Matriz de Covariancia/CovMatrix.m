%%
%     Curso do canal ExataMenteS
%     Aula 68 - Matriz de Covariancia
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Load the dataset. 
% Channels X Time X Trials
load 

% Trial average
Data = 

% Data sizes
DataSize = size(Data);

% Using loops

% Init
CovMat_1 = zeros( DataSize(1) );

% Loop over channels and compute dot product
for i = 1:DataSize(1)
    for j = 1:DataSize(1)
        
        % Mean-center
        Dxi = 
        Dyj = 
        
        % Covariance
        CovMat_1(i,j) = 
    end 
end 


% Using matrix multiplication
% Mean-center
dataM = 

% Dot product 
CovMat_2 = 

% Using MATLAB cov function
CovMat_3 = cov(Data);

% Check the size
size(CovMat_3)

% Plot
figure(1), clf

titles = {'Using loops';'Matrix';'MATLAB function'};

% Make images
for i = 1:3
    subplot(1,3,i)
    eval([ 'imagesc(CovMat_' num2str(i) ')' ])
    
    imagesc(CovMat_1)
    axis square
    title(titles{i})
end

subplot(131)
imagesc(CovMat_1)
axis square
title(titles{1})
xlabel('Channel'), ylabel('Channel')
