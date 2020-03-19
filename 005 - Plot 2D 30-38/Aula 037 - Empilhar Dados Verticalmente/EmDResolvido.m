%%
%     Curso do canal ExataMenteS
%     Aula 37 - Empilhar Dados Verticalmente
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%

% simulation details
ncanais   = 100;
npnts     = 10000;

% Criar a matriz que correlaicona nossas series temporais 
matc = rand(ncanais);
[eV, eD] = eig( matc * matc' );
data = eV * sqrt(eD) * randn(ncanais,npnts);

% Vamos integrar para os dados parecerem mais realistas
data = detrend( cumsum(data,2)' )';
figure(1), clf
plot(1:npnts,data)


% Alinhar verticalmente
figure(2), clf
hold on
for i = 1:ncanais
    plot(1:npnts,data(i,:) + 10*i)
end

% Utilizando bsxfun
figure(3), clf
plot(1:npnts, bsxfun(@plus,data,(1:ncanais)'*10) )
xlabel('Tempo')
set(gca,'ytick',[])
