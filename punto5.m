A = rand(100,100);


matrizOrtonormal = orth(A)
matrizTransformada =  A * matrizOrtonormal;

% Frobenius
normAFro = norm(A,'fro')
normTransformadaFro = norm(matrizTransformada,'fro')

% Norma 1
normA1 = norm(A,1)
normTransformada1 = norm(matrizTransformada,1)

% Norma 2

normA2 = norm(A,2)
normTransformada2 = norm(matrizTransformada,2)

% Norma Inf

normAInf = norm(A,'inf')
normTransformadaInf = norm(matrizTransformada,'inf')

