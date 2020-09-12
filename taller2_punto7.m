
% leer imagen, pasarla a escala de grises y reescalarla a 500 x 500
foto = imread('D2.jpeg');
foto_b_w = rgb2gray(foto);
A = imresize(foto_b_w, [500 500]);

% imagen original
figure
imshow(A)

% descomposicion en valores singulares
[U, S, V] = svd(double(A));

for i=1:10:50
    % representar la foto con el mayor valor singular hasta el
    % i-esimo valor singular
    X = U(:, 1:i) * S(1:i, 1:i) * V(:, 1:i)';
    figure
    imshow(uint8(X));
end

% Conclusion: se puede decir que usando los 50 primeros valores 
% singulares se consigue una foto con un corte optimo, ya que se 
% puede apreciar mas detalles de la foto.