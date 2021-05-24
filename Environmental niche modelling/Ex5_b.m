load('EnvNiche.mat');


sig1 = 5;
sig2 = 100;
mu1 = 10;
mu2 = 600;
mmin1 = 0;
mmax1 = 0.5;
mmin2 = 0.2;
mmax2 = 0.5;


 

suit4=gauss(BIO(:,:,1),mu1,sig1);
suit4new=gauss(BIO(:,:,12),mu2,sig2);
rescale1=rescale(suit4,mmin1,mmax1);
rescale2=rescale(suit4new,mmin2,mmax2);

random=rand(900,2160);
presence1=rescale1>random;
presence2=rescale2>random;



im1=imagesc(x,y,presence1);
axis xy
colorbar
axis image
xlabel('Longitude');
ylabel('Latitude');
title('Presence map for species 4, annual mean temperature');

figure()

im2=imagesc(x,y,presence2);
axis xy
colorbar
axis image
xlabel('Longitude');
ylabel('Latitude');
title('Presence map for species 4, annual precipitation');

%tot2 parte da un range più alto, quindi è più probabile che abbia un
%valore superiore alla matrice random
