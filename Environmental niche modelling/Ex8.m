load('EnvNiche.mat');

map_new=BIO(:,:,1);
[gx,gy]=gradient(BIO(:,:,1));
Gy = gy./pixY;
Gx = gx./pixX;

V = sqrt(Gx.^2+Gy.^2);
% Rand=rand(900,2160);

map1=imread('he45bi501.tif');
map1=double(map1);
map1(mask==0)=NaN;
map1=map1/10;

Diff_spat = V;
Diff_temp = (map1 - map_new)/7.5;

Vel = Diff_temp./Diff_spat;
Vel(Diff_spat<0.001)=0.001;
Vel_r=rescale(Vel,0,100);

Rapid = Vel_r>89;
% Sc = rescale(Rapid,0,1);

imagesc(x,y,Rapid);
axis xy
colorbar
axis image
xlabel('Longitude');
ylabel('Latitude');
title('Areas where carnivor mammals move slower (°C/decade)');
