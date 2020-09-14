%% generar datos

% matriz A
A = zeros(1000, 6);
A(:, 1) = ones(1000, 1);
for i=1:6
    A(:, i) = normrnd(i, 1, [1000,1]);
end

% vector y
epsilon = normrnd(0, 0.2);
sumatoria = 0;
for i=1:6
    sumatoria = sumatoria + (i^3 * A(:, i) + epsilon);
end

y = 15 + sumatoria;

%% inversa generalizada de A (pseudoinversa de moore-penrose)
A_pinv = pinv(A); %inv(A'*A) * A';

%% premultiplicacion de A por el vector y
premulti = A_pinv * y;

%% modelo de regresión

