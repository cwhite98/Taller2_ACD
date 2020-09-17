
n = randi([2 5]);
p = n;

vec1 = ones([n,1]);
A = rand(p,p);

%%%% A vs A+I %%%%%
AGorro = A-(1/n)*vec1*vec1'*A;

[vecAGorro, valsAGorro] = eig(AGorro);

I = eye(p,p);

[vecAI, valsAI] = eig(AGorro+I);

valsAGorro;
valsAI;


%%%% A+kI %%%%%
k = 0.1+rand();

AkI = AGorro + k*I;
[vecAkI, valsAkI] = eig(AkI);

valsAkI;


%%%% Ledoit and Wolf %%%%%
[C s] = cov1para(AGorro);
[vecC, valsC] = eig(C);
[vecCGorro, valsCGorro] = eig(cov(AGorro));
valsC