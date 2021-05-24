load('EnvNiche.mat');

sig = 5;
mu = 20;
alpha2 = -10;
alpha3 = -10;
beta2 = 0;
beta3 = 50;

suit=gauss(BIO(:,:,1),mu,sig);
imagesc(x,y,suit);
axis xy
colorbar
axis image
xlabel('Longitude');
ylabel('Latitude');
title('Suitability map for species 1');
figure()
suit2=logistic(BIO(:,:,6),alpha2,beta2);
imagesc(x,y,suit2);
axis xy
colorbar
axis image
xlabel('Longitude');
ylabel('Latitude');
title('Suitability map for species 2');
figure()
suit3=logistic(BIO(:,:,14),alpha3,beta3);
imagesc(x,y,suit3);
axis xy
colorbar
axis image
xlabel('Longitude');
ylabel('Latitude');
title('Suitability map for species 3');