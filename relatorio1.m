clc;
clear;

%% ex1
valores = zeros(1,3);

valores(1) = input('Digite a primeira medição: ');
valores(2) = input('Digite a segunda medição: ');
valores(3) = input('Digite a terceira medição: ');


media = (valores(1) + valores(2) + valores(3)) / 3
maior = max(valores)
menor = min(valores)

if media >= 8
    disp('Resultado alto')
    
elseif media >= 5
    disp('Resultado intermediário')

else
    disp('Resultado baixo')
end

%% ex2

A = [3 8 2 10 5 7 1 6];
B = zeros(1,8);

B = zeros(size(A));   % Cria vetor com o mesmo tamanho de A

for i = 1:1:8
    if  A(i) >= 6
        B(i) = A(i)*2;
    else 
        B(i) = A(i)*3;
    end
   
end

A
B
sum(B)       
mean(B)      
max(B)       
min(B)       

%% ex3

A = [14 7 20 9 6 11 18 5];

for i = 1:1:8
    if  rem(A(i),2) ==  0
        B(i) = A(i);
    else 
        B(i) = 0;
    end

end

B

%% ex4

disp('1- Soma');
disp('2- Sutração');
disp('3- Multiplicação');
disp('4- Divisão')

var = input('Qual a opcao desejada: ');

A = input('Digite o primeiro valor: ');
B = input('Digite o segundo valor: ');

switch var

    case 1
        disp('Soma');
        x = A + B

    case 2
        disp('Subtração');
        x = A - B

    case 3
        disp('Multiplicação');
        x = A * B

    case 4
        disp('Divisão');
        if B == 0
            disp('Erro: Divisão por zero não é permitida');
        else
            x = A / B;
        end
     
    otherwise
        disp('Opção inválida')
        

end

%%  ex5

soma = 0;
contador = 0;

while soma <= 4

    valor = rand;

    soma = soma + valor;

    contador = contador + 1;

    disp('Valor sorteado:');
    disp(valor);

    disp('Soma atual:');
    disp(soma);

end

if contador > 8
    disp('Muitas repetições');
else
    disp('Poucas repetições');
end

disp('Número total de repetições:');
disp(contador);

%% ex 6

A = [2 7 4 9;
    6 1 8 3];

B = zeros(size(A));

for j = 1:size(A,1)
    for i = 1:size(A,2)

        if A(j,i) > 5
            B(j,i) = 2 * A(j,i);
        else
            B(j,i) = A(j,i) + 5;
        end

    end
end

A
B
B'
B(1,:)
B(:,3)

%% ex7
%% Função analisa_vetor

function [soma, media] = analisa_vetor(A)

soma = sum(A);
media = mean(A);

end


%% Script 

A = [5 12 7 3 9 14];

[soma, media] = analisa_vetor(A);

if media >= 8
    fprintf('Media elevada\n');
else
    fprintf('Media abaixo de 8\n');
end

fprintf('Soma: %.2f\n', soma);
fprintf('Media: %.2f\n', media);

%% ex8

%% Função

function B = transforma_matriz(A, B)

for j = 1:size(A,1)

    for i = 1:size(A,2)

        if A(j,i) >= 5
            B(j,i) = A(j,i) * 2 * exp(1);
        else
            B(j,i) = A(j,i) * 2;
        end

    end

end

end


%% Script

A = [1 5 3 8;
    6 2 7 4];

B = zeros(size(A));

B = transforma_matriz(A, B);

B

%% ex9

valor1 = input('Digite o primeiro valor: ', 's')
valor2 = input('Digite o segundo valor: ', 's')

valor1 = str2num(valor1);
valor2 = str2num(valor2);

soma = valor1 + valor2;
multiplicacao = valor1 * valor2;

fprintf('Soma: %.2f\n', soma);
fprintf('Multiplicacao: %.2f\n', multiplicacao);

if soma > 20
    disp('Soma alta');
elseif soma == 20
    disp('Soma igual a 20');
else
    disp('Soma baixa');
end

%% ex10
dados = [12 18 10 25 15];

soma = sum(dados);
media = mean(dados);
maior = max(dados);
menor = min(dados);

disp(soma);
disp(media);
disp(maior);
disp(menor);

contador = 0;

for i = 1:length(dados)

    if dados(i) >= media
        contador = contador + 1;
    end

end

disp(contador);

disp('1 - Grafico de barras');
disp('2 - Grafico de pizza');

opcao = input('Escolha uma opcao: ');

switch opcao

    case 1
        bar(dados);
        title('Grafico de barras');

    case 2
        pie3(dados);
        title('Grafico de pizza');

    otherwise
        warning('Nenhum grafico foi criado.');

end

if contador > length(dados)/2
    disp('Maioria dos valores acima ou igual a media');
else
    disp('Menos da metade dos valores acima ou igual a media');
end