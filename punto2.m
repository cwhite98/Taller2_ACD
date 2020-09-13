m = randi([1 20]);
n = randi([1 20]);
if(m==n)
    m=m+1;
end
A = rand(m,n);

C = A'*A;
B = A*A';

%Determinante
detC = det(C)
detB = det(B)

%Traza
traceC = trace(C)
traceB = trace(B)

[vectoresC,valoresC] = eig(C);
[vectoresB,valoresB] = eig(B);

%Vectores propios
vectoresC
vectoresB

%Valores propios
valsC = diag(valoresC)
valsB = diag(valoresB)
