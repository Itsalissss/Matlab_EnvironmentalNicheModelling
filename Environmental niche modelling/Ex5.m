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
imagesc(x,y,rescale1);
axis xy
colorbar
axis image
xlabel('Longitude');
ylabel('Latitude');
title('Probability map for species 4, annual mean temperature');
figure()
imagesc(x,y,rescale2);
axis xy
colorbar
axis image
xlabel('Longitude');
ylabel('Latitude');
title('Probability map for species 4, annual precipitation');