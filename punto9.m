p = randi([1 10])
n = randi([1 10])

A = rand(n,n);
B = rand(p,p);

kronecker = kron(A,B); % producto kronecker

[vectoresK valoresK] = eig(kronecker);


[vectoresA valoresA] = eig(A);
[vectoresB valoresB] = eig(B);
vectoresAkB = kron(vectoresA,vectoresB);

vectoresK;
vectoresAkB;