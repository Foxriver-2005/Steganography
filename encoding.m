clc;
clear;
% Read image and text
original=imread('logo.png');
target=original;

fid=fopen('message.txt','r');
F=fread(fid);
s=char(F');
fclose(fid);
%calculate the file size
[r c p]=size(original);
lengthoftext=length(F);
% Start the encoding process
i=1;
j=1;
k=1;
while k<=lengthoftext
    a=F(k);
    red=original(1,j,1);
    green=original(i,j,2);
    blue=original(i,j,3);
    [red1,green2,blue3]=hidetxt(red,green,blue,a);
    target(i,j,1)=red1;
    target(i,j,2)=green2;
    target(i,j,3)=blue3;
    if(i<r)
        i=i+1;
    else
        i=1;
        j=j+1;
    end
    k=k+1;
end
target(r,c,1)=lengthoftext; %text size
target(r,c,2)=r; %Image's width
figure; 
imwrite(target,'secret.bmp');
subplot(1,2,1);
imshow(original);
subplot(1,2,2);
imshow(target,[]);

