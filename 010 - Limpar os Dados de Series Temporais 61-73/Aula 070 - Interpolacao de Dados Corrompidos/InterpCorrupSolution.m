%%
%     Curso do canal ExataMenteS
%     Aula 70 - Interpolacao de Dados Corrompidos
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Run the Data3D

% Corrupt several channels
Corrupt = .3; %  %30

% Replace with noise
SensorsF = randperm(n^2);
SensorsF = SensorsF(1:ceil(Corrupt*n^2));

% Loop
MultiDataC = MultiData;
for i = 1:NumberPoints
    % Get the data
    TimeMPoint = squeeze(MultiData(i,:,:));
    
    % Replace 
    TimeMPoint(SensorsF) = 100 * randn(length(SensorsF),1);
    
    % Corrupted data
    MultiDataC(i,:,:) = TimeMPoint;
end


figure(1), clf

% Video
subplot(121)
OriginalHandle = imagesc(squeeze( mean(MultiData,1) ));
set(gca,'clim',[-1 1]*2), axis square
title('Original data');

subplot(122)
CorruptedHandle = imagesc(squeeze( mean(MultiData,1) ));
set(gca,'clim',[-1 1]*2), axis square
title('Corrupted data');

% Loop
for i = 1:NumberPoints
    set(OriginalHandle, 'Cdata', squeeze(MultiData(i,:,:)))
    set(CorruptedHandle, 'Cdata', squeeze(MultiDataC(i,:,:)))

    pause(.05)
end


% How to identify the sensors with failure ? 
% Assuming that they have very large variance.
figure(2), clf
imagesc(squeeze(std(MultiDataC,[],1)))

% Histogram of the standard deviations
TimeMPoint  = reshape( squeeze(std(MultiDataC,[],1)) ,1,[]);
TimeMPoint2 = (TimeMPoint-mean(TimeMPoint)) / std(TimeMPoint);
histogram(TimeMPoint2,30)

% Threshold and identify the sensors to interpolate
InterpSensors = TimeMPoint2 > 2;

% Interpolation
% Init
MultiDataIn = zeros(NumberPoints, n, n);

% Loop
for i = 1:NumberPoints
    
    % Get a 2D frame of data
    Frames = squeeze(MultiDataC(i,:,:));
    
    % Use scatteredInterpolant to define an interpolation function
    F = scatteredInterpolant(X(~InterpSensors)',Y(~InterpSensors)',Frames(~InterpSensors)');
  
    % Apply the function to estimate missing data
    p = F(X(InterpSensors)',Y(InterpSensors)');
    
    % Get the missing data back in the frame
    Frames(InterpSensors) = p;
    
    % Get that frame back into the dataset
    MultiDataIn(i,:,:) = Frames;
end

% Final video
% Original data
subplot(131)
ImgHandle1 = imagesc(squeeze (mean(MultiData,1) ));
set(gca,'clim',[-1 1]*2), axis square
title('Original data');

% Corrupted data
subplot(132)
ImgHandle2 = imagesc(squeeze (mean(MultiData,1) ));
set(gca,'clim',[-1 1]*2), axis square
title('Original data');

% Interpolated data
subplot(133)
ImgHandle3 = imagesc(squeeze (mean(MultiData,1) ));
set(gca,'clim',[-1 1]*2), axis square
title('Rec data');

% Loop
for i = 1:NumberPoints
    
    set(ImgHandle1,'CData',squeeze(MultiData(i,:,:)));
    set(ImgHandle2,'CData',squeeze(MultiDataC(i,:,:)));
    set(ImgHandle3,'CData',squeeze(MultiDataIn(i,:,:)));
    
    pause(.05)
end

