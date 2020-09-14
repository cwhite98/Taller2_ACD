datos1 = mvnrnd(zeros([15,1]), hilb(15), 1000);

medias = zeros([14,1]);
 

for j=0:25
    medias(15) = j;

    datos2 = mvnrnd(medias, hilb(15), 100);
    datos = [ datos1
               datos2 ]; 

    C = cov(datos);
    [vectC, valsC] = eig(C);
 
    if j ==0
        autoVec0 = vectC
    end

    autovectoresC = vectC;
    DHabitual(j+1) = norm(autoVec0-autovectoresC, 'fro');
    
    % para Ledoit and Wolf
    CLW = cov1para(datos,0.5 )
    [vectCLW, valsCLW] = eig(CLW);
 
    if j ==0
        autoVec0LW = vectCLW
    end

    autovectoresCLW = vectCLW;
    DLW(j+1) = norm(autoVec0LW-autovectoresCLW, 'fro');
    
    % para Kurmain
    [dx,dm,media,Cov,vkur,ndir] = kur_main(datos)
    [vectCKur, valsCKur] = eig(Cov);
 
    if j ==0
        autoVec0Kur = vectCKur
    end

    autovectoresCKur= vectCKur;
    DKur(j+1) = norm(autoVec0Kur-autovectoresCKur, 'fro');
    
    
    
    
end

figure; hold on
a1 = plot(0:25,DHabitual,"r");m1 = "Habitual";
a2 = plot(0:25,DLW,"b"); m2 = "Ledoit Wolf";
a3 = plot(0:25,DKur,"b"); m3 = "Kur Main";

legend([a1;a2;a3],m1,m2,m3)



