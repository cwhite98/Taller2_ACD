%% lectura portfolio100
data = readtable('portfolio100.txt');
datarray = data{:,:};
date = datarray(:, 1);
datarray = datarray(1:500, 2: end);

%% calculo asimetria
asimetria = skewness(datarray');

%% calculo curtosis
curtosis = kurtosis(datarray');

%% calculo varianza global
var1 = var(datarray');
var_global = sum(var1);

%% calculo varianza promedio
var_prom = mean(var1);

%% columna de promedio
datarray(:, 101) = mean(datarray')';

%% calculo asimetria con promedio
asimetria_prom = skewness(datarray');

%% calculo curtosis con promedio
curtosis_prom = kurtosis(datarray');

%% calculo varianza global con promedio
var2 = var(datarray');
var_global2 = sum(var2);

%% calculo varianza promedio con promedio
var_prom2 = mean(var2);

%% revision de diferencias entre los resultados de ambas matrices
% coger norma 1 entre los 2 vectores, si es muy cercano a 0 es que se
% parecen mucho
norma_asimetria = norm(asimetria_prom - asimetria, 1);
norma_curtosis = norm(curtosis_prom - curtosis, 1);
dif_var_global = abs(var_global2 - var_global);
dif_var_prom = abs(var_prom2 - var_prom);
