close all;
clear all;
A = imread('img1.jpg');
K = imread('img2.jpg');

A = rgb2gray(A);
K = rgb2gray(K);

Aft = fftn(A);
magA = abs(Aft);
%s = log(1+fftshift(Aft));
phaseA = angle(Aft);

Aim = ifftshift(ifftn(magA));
Aip = ifftn(exp(1i*phaseA));
figure, imshow(A);
figure, imshow(Aim,[]);
figure, imshow(Aip,[]);

Kft = fftn(K);
magK = abs(Kft);
t = log(1+fftshift(Kft));
phaseK = angle(Kft);

Kim = ifftshift(ifftn(magK));
Kip = ifftn(exp(1i*phaseK));
figure, imshow(K);
figure, imshow(t,[]);
figure, imshow(Kim,[]);
figure, imshow(Kip,[]);

x = magA.*exp(1i*phaseK);
X = ifftn(x);
figure, imshow(X, []);

y = magK.*exp(1i*phaseA);
Y = ifftn(y);
figure, imshow(Y, []);
