n = randi([2 1000]);
p = randi([2 1000]);

vec1 = ones([n,1]);
A = rand(n,p);

operacion = (1/n)*A'*vec1;

mediasP = mean(A, 1)