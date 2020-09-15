clear all

max = 100
for n=2:max
    A = rand(10, n);
    C = A'*A;
    mediaC = zeros(1,n);
    datos = mvnrnd(mediaC, C, 1000);
    covDatos = cov(datos);
    frobenius(n) = norm(C-covDatos,'fro');
    norm1(n) = norm(C-covDatos, 1);
    norm2(n) = norm(C-covDatos, 2);
    normInf(n) = norm(C-covDatos,'inf');
    
    %Mejora
    cov1Datos = cov1para(datos);
    frobCov1(n) = norm(C-cov1Datos,'fro');
    norm1Cov1(n) = norm(C-cov1Datos, 1);
    norm2Cov1(n) = norm(C-cov1Datos, 2);
    normInfCov1(n) = norm(C-cov1Datos,'inf');
end

figure
plot([1:max],frobenius, 'b')
hold on 
plot([1:max],frobCov1, 'r')
title('Frobenius')

figure
plot([1:max],norm1, 'b')
hold on 
plot([1:max],norm1Cov1, 'r')
title('Norma 1')

figure
plot([1:max],norm2, 'b')
hold on 
plot([1:max],norm2Cov1, 'r')
title('Norma 2')

figure
plot([1:max],normInf, 'b')
hold on
plot([1:max],normInfCov1, 'r')
title('Norma Inf')