
function XY2D=Get2DPoints(ImageFile, NumberOfPoints)
XY2D=[];
[Img]=imread(ImageFile); %%% assuming the imagefile is a jpg file.
image(Img); drawnow; hold on;
for i=1:4
[x, y]=ginput(1);
v=[y;x];
plot(x, y, 'r*');
XY2D=[XY2D v];
end
return;
