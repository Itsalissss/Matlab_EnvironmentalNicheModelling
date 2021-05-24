load('EnvNiche.mat');

map1=imread('he45bi501.tif');
map1=double(map1);
map1(mask==0)=NaN;
map1=map1/10;
map2=imread('he45bi5012.tif');
map2=double(map2);
map2(mask==0)=NaN;
                                                                                                                                                                                                                                                                                                                                                                                    
mu1 = 10;
sigma1 = 5;
mu2 = 600;
sigma2 = 100;

suit4_1=gauss(map1,mu1,sigma1);
suit4_1 = rescale(suit4_1,0,1);

suit4_2=gauss(map2,mu2,sigma2);
suit4_2 = rescale(suit4_2,0,1);

suit_tot=suit4_1.*suit4_2;

imagesc(x,y,suit_tot);
axis xy
colorbar
axis image
xlabel('Longitude');
ylabel('Latitude');
title('Suitability map for species 4, year 2050 model rcp45');

subplot(1,2,1)
map1;

subplot(1,2,2)
map2;