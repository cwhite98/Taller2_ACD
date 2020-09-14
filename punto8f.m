%% lectura de archivo
data = readtable('portfolio100.txt');
datarray = data{:,:};
A = datarray(1:100, 2: end);

A_cov = cov(A);
[filas, col] = size(A);
A_barra = A - ((1/filas) * ones(filas) * ones(filas)' * A);
mediana = median(A);
P = eye(filas) - (ones(filas) * ones(filas)' / filas);
A_centrado = P * A;

%% descomposicion valores singulares de A
[U, S, V] = svd(A);

%% descomposicion espectral de A_barra
[auto_vector_A_barra, auto_valor_A_barra] = eig(A_barra);
des_espectral = auto_vector_A_barra * auto_valor_A_barra * auto_vector_A_barra';

%% norma matriz
norma = norm(A, 2)

%% Conclusion:
% la norma 2 de la matriz A es la misma que el mayor valor singular de la
% matriz A
