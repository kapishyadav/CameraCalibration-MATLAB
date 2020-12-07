img=imread('Notre.jpg'); 
[rowsi,colsi,z]= size(img); 
angle=70;
rads=2*pi*angle/360;  
cen=[rowsi/2 colsi/2];
ext=[rowsi colsi];
dist=norm(ext-cen);
rowsf = 2*ceil(dist);
colsf = 2*ceil(dist);

C=uint8(zeros([rowsf colsf 3]));
%calculating center of original and final image
xo=ceil(rowsi/2);                                                            
yo=ceil(colsi/2);
midx=ceil((size(C,1))/2);
midy=ceil((size(C,2))/2);

for i=1:size(C,1)

    for j=1:size(C,2)                                                       


         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       

         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             

         x=round(x)+xo;

         y=round(y)+yo;

         

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 

              C(i,j,:)=img(x,y,:);  

         end


    end

end


imshow(C)

D=uint8(zeros([rowsf colsf 3]));
for i=1:size(D,1)

    for j=1:size(D,2)                                                       


         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       

         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             

         x=round(x)+xo;

         y=round(y)+yo;

         

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 

              D(i,j,:)=img(x,y,:);  

         end


    end

end