%% lectura de archivo
data = readtable('portfolio100.txt');
datarray = data{:,:};
A = datarray(1:100, 2: end);

A_cov = cov(A);
[filas, col] = size(A);
A_barra = A - ((1/filas) * ones(filas) * ones(filas)' * A);

P = eye(filas) - (ones(filas) * ones(filas)' / filas);
A_centrado = P * A;

%% descomposicion valores singulares de A
[U, S, V] = svd(A_cov);

%% descomposicion espectral de A_barra
[auto_vector, auto_valor] = eig(A_cov);
des_espectral = auto_vector * auto_valor * auto_vector';

%% norma matriz
norma = norm(A, 2)

%% Conclusion:
% la norma 2 de la matriz A es la misma que el mayor valor singular de la
% matriz A
