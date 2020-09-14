n = randi([2 1000]);
p = randi([2 1000]);

vec1 = ones([n,1]);
A = rand(n,p);

operacion = A'*vec1;

%prueba
suma = sum(A,1)