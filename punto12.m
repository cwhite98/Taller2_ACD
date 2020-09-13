% lectura portfolio100
data = readtable('portfolio100.txt');
datarray = data{:,:};
date = datarray(:, 1);
datarray = datarray(1:500, 2: end);

% calculo asimetria
asimetria = skewness(datarray);

% calculo curtosis
curtosis = kurtosis(datarray);

% calculo varianza global
var_global = var(datarray);

% calculo varianza promedio


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% columna de promedio
datarray(:, 101) = mean(datarray')';

% calculo asimetria
asimetria_ = skewness(datarray);

% calculo curtosis
curtosis_ = kurtosis(datarray);

% calculo varianza global
var_global_ = var(datarray);

% calculo varianza promedio



