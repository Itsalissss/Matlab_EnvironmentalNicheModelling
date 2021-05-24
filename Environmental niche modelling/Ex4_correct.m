load('EnvNiche.mat');


mu1 = 10;
sigma1 = 5;
mu2 = 600;
sigma2 = 100;

suit4_1=gauss(BIO(:,:,1),mu1,sigma1);
suit4_1 = rescale(suit4_1,0,1);

suit4_2=gauss(BIO(:,:,12),mu2,sigma2);
suit4_2 = rescale(suit4_2,0,1);

suit_tot=suit4_1.*suit4_2;

imagesc(x,y,suit_tot);
axis xy
colorbar
axis image
xlabel('Longitude');
ylabel('Latitude');
title('Suitability map for species 4');