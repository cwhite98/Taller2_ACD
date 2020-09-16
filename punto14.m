datos1 = mvnrnd(zeros([11,1]), hilb(11), 1000);

medias = zeros([11,1]);
 

for j=0:25
    medias(randi([1 11])) = j;

    datos2 = mvnrnd(medias, hilb(11), 100);
    datos = [ datos1
               datos2 ]; 

    C = cov(datos);
    [vectC, valsC] = eig(C);
 
    if j ==0
        autoVec0 = vectC;
    end

    autovectoresC = vectC;
    DHabitual(j+1) = norm(autoVec0-autovectoresC, 'fro');
    
    % para Ledoit and Wolf
    CLW = cov1para(datos,0.5);
    [vectCLW, valsCLW] = eig(CLW);
 
    if j ==0
        autoVec0LW = vectCLW;
    end

    autovectoresCLW = vectCLW;
    DLW(j+1) = norm(autoVec0LW-autovectoresCLW, 'fro');
    
    % para Kurmain
     [dx,dm,media,Cov,vkur,ndir] = kur_main(datos);
     [vectCKur, valsCKur] = eig(Cov);
 
     if j ==0
         autoVec0Kur = vectCKur;
     end

     autovectoresCKur= vectCKur;
     DKur(j+1) = norm(autoVec0Kur-autovectoresCKur, 'fro');
    
    %para Kendall
    
     desviacion = diag(std(datos));
     kendall = corr(datos,'Type','kendall');
     covKendall = desviacion * kendall * desviacion;
     
     [vecKendall valsKendall] = eig(covKendall);
     
      if j ==0
        autoVec0Kendall = vecKendall;
      end
      
      autoVecKendall = vecKendall;
      DKendall(j+1) = norm(autoVec0Kendall-autoVecKendall, 'fro');
     
    
    % para Spearman
    
     spearman = corr(datos,'Type','spearman');
     covSpearman= desviacion * spearman * desviacion;
     
     [vecSpearman valsSpearman] = eig(covSpearman);
     
      if j ==0
        autoVec0Spearman = vecSpearman;
      end
      
      autoVecSpearman = vecSpearman;
      DSpearman(j+1) = norm(autoVec0Spearman-autoVecSpearman, 'fro');
      
end

figure; hold on
a1 = plot(0:25,DHabitual,"r");m1 = "Habitual";
a2 = plot(0:25,DLW,"b"); m2 = "Ledoit Wolf";
a3 = plot(0:25,DKur,"m"); m3 = "Kur Main";
a4 = plot(0:25,DKendall,"g"); m4 = "Kendall";
a5 = plot(0:25,DSpearman,"k"); m5 = "Spearman";

legend([a1;a2;a3;a4;a5],m1,m2,m3,m4,m5)



