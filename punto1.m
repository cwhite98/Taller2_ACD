max = 100
eigVals=[]

for j=1:max
    m = randi([1 50]);
    n = randi([1 50]);
    if(m==n)
        m=m+1;
    end
    A = rand(m,n);
    C=A'*A;
    eigVals = eig(C)
    x = rand(n,1);
    prueba(j) = x'*C*x;
end

plot([1:max],prueba)
title('x''Cx >= 0')
