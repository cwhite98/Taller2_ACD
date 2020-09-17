data = readtable('portfolio100.txt');
datarray = data{:,:};
B = datarray(1:500, 2: end);

A = B * B';
x = (1:500)';
b = A * x;

condi = cond(A);
dete = det(A);

x_inv = inv(A) * b;
x_p = A\b;
x_pinv = pinv(A) * b;

dA_lu = decomposition(A,'lu');
x_lu = dA_lu\b;

dA_qr = decomposition(A,'qr');
x_qr = dA_qr\b;

[auto_vector_A, auto_valor_A] = eig(A);

%dA_chol = decomposition(A,'chol');
%x_chol = dA_chol\b;

norm_x_inv = norm(x_inv - x, 2);
norm_pinv = norm(x_pinv - x, 2);
norm_p = norm(x_p - x, 2);
norm_lu = norm(x_lu - x, 2);
norm_qr = norm(x_qr - x, 2);








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data = readtable('portfolio100.txt');
datarray = data{:,:};
B = datarray(1:500, 2: end);

A = B' * B;
x = (1:100)'; % normrnd(2, 1, [100, 1]);
b = A * x;

condi = cond(A);
dete = det(A);
[auto_vector_A, auto_valor_A] = eig(A);

x_inv = inv(A) * b;
x_p = A\b;
x_pinv = pinv(A) * b;

dA_lu = decomposition(A,'lu');
x_lu = dA_lu\b;

dA_qr = decomposition(A,'qr');
x_qr = dA_qr\b;

dA_chol = decomposition(A,'chol');
x_chol = dA_chol\b;

norm_x_inv = norm(x_inv - x, 2);
norm_pinv = norm(x_pinv - x, 2);
norm_lu = norm(x_lu - x, 2);
norm_qr = norm(x_qr - x, 2);
norm_chol = norm(x_chol - x, 2);
