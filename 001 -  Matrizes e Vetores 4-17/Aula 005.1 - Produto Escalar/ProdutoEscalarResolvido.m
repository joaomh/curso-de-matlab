%% 
%     Curso do canal ExataMenteS
%     Aula 5 - Produto Escalar e Plot 2d/3d de vetores
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     Instrutor: João Pinheiro


% Dois vetores ( Do mesmo tamanho! )
a = [ 1 3 ];
b = [ 5 7 ];

% Implementacao I 
PtE1 = sum(a.*b);

% Implementacao II
PtE2 = a(:)'*b(:);


% Implementacao III
PtE3 = 0;

for i=1:length(a);
    
    PtE3 = a(i)*b(i) + PtE3;
    
end

% Implementacao IV
PtE4 = dot(a,b);

% Implementacao V
theta = acos(dot(a,b)/(norm(a)*norm(b)));
PtE5 = norm(a)*norm(b)*cos(theta);

