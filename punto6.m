A = [2 4 5 
    6 9 8 
    4.1 5 3]

Aerror= [2 4 5 
    6 9 8 
    4.2 5 3]

b = [220 
     490 
     274]
 
[L U P] = lu(A);

AN = P*A;
bN = P*b;
[LN UN PN] = lu(AN);

y = LN\bN;
x = UN\y;

[Lerr Uerr Perr] = lu(Aerror);

Aerr = Perr*Aerror;
berr = Perr*b;
[Lerr Uerr Perr] = lu(Aerr);

yErr = Lerr\berr;
xErr = Uerr\y;

% Cota de error para matrices del sistema

errorSolucion = x - xErr; % sistema corecto - sistema con error
normaError = norm(errorSolucion)/norm(x)

condA = cond(Aerror);
errorMatriz = A - Aerror;
normaMatriz = norm(errorMatriz)/norm(Aerror);

cota = condA * normaMatriz