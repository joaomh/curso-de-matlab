%%
%     Curso do canal ExataMenteS
%     Aula 71 - Rejeitar Dados Baseados na Covariancia
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
load mult_data.mat
DataDim = size(data);

% Loop to compute average 
CovAvg = zeros(DataDim(1));
for i = 1:DataDim(3)
    CovAvg = CovAvg + cov( data(:,:,i)' );
end

% Divide by number of trials
CovAvg = CovAvg / DataDim(3);

% now loop through trials and compute the distance to the average
CovDistance = zeros(DataDim(3),1);

for i = 1:DataDim(3)
    CovTrial = cov( data(:,:,i)' );
    CovDistance(i) = sqrt( sum((CovTrial(:)-CovAvg(:)).^2) );
end

% Create a new varible 
CovDistZ = (CovDistance-mean(CovDistance)) / std(CovDistance);

% Show the distances
figure(1), clf
subplot(1,3,1:2)
plot(CovDistZ,'ks-','linew',2,'markerfacecolor','w','markersize',12)
xlabel('Trial')
ylabel('Z-scored covariance distances')

subplot(133)
histogram(CovDistZ,10)


% Threshold
Threshold = 2.3; % p-value of .01

% Trials that exceed the threshold
FarFromThresh = CovDistZ > Threshold;

% Remove those 
data2 = data;
data2(:,:,FarFromThresh) = [];

% Check sizes
whos data*

% Plot
figure(2), clf, hold on
plot(1:DataDim(2),mean(data(31,:,:),3),'r','linew',2)
plot(1:DataDim(2),mean(data2(31,:,:),3),'b','linew',2)
xlabel('Time')
set(gca,'xlim',[1-2 DataDim(2)+2])
legend({'Original data';'Filtered Signal'})
zoom on
