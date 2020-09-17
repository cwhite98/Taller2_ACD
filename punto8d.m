n = randi([2 5]);
p = randi([2 5]);

vec1 = ones([n,1]);
A = rand(n,p);

operacionMean = (1/n)*vec1*vec1'*A;

mediaP = mean(A, 1)
