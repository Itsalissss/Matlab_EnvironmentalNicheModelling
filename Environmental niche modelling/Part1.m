load('EnvNiche.mat');
imagesc(x,y,BIO(:,:,1));
colorbar
axis xy
axis image

imagesc(x,y,mask);
axis xy
axis image
title('Map of land and ocean cells');
xlabel('Longitude');
ylabel('Latitude');

imagesc(x,y,pixX(:,:,1));
axis xy
axis image
title('PixX'); 
xlabel('Longitude');
ylabel('Latitude');

imagesc(x,y,pixY(:,:,1));
axis xy
axis image
title('PixY');
xlabel('Longitude');
ylabel('Latitude');


land = mean(mean(mask));


alpha = 1;
alpha2 = 10;
alpha3 = -1;
alpha4 = -10;
beta = 25;
beta2 = 30;
x = 0:0.1:50;

% figure()
y1=logistic(x,alpha,beta);
plot(x,y1);
xlabel('Bioclimatic variable');
ylabel('Environmental stability');
title('Logistic response function');
hold on

y2=logistic(x,alpha2,beta);
    plot(x,y2);
   
y3=logistic(x,alpha3,beta);
    plot(x,y3);
    
y4=logistic(x,alpha4,beta);
    plot(x,y4);

y5=logistic(x,alpha,beta2);
plot(x,y5,'--');
xlabel('Bioclimatic variable');
ylabel('Environmental stability');
title('Logistic response function');

legend('alpha=1,beta=25','alpha=10,beta=25','alpha=-1,beta=25','alpha=-10,beta=25','alpha=1,beta=30');
    
hold off


