function [mred,mgreen,mblue] = hidetxt(red,green,blue,text)
% text=65;
% red=2;
% green=17;
% blue=10;

red=bitand(red,248);
green=bitand(green,248);
blue=bitand(blue,252);

mred=red;
mgreen=green;
mblue=blue;



if bitand(text,128)==128
    mred=bitor(red,4);
end
if bitand(text,64)==64
    mred=bitor(red,2);
end
if bitand(text,32)==32
    mred=bitor(red,1);
end
if bitand(text,16)==16
    mgreen=bitor(green,4);
end
if bitand(text,8)==8
    mgreen=bitor(green,2);
end
if bitand(text,4)==4
    mgreen=bitor(green,1);
end
if bitand(text,2)==2
    mblue=bitor(blue,1);
end
if bitand(text,1)==1
    mblue=bitor(blue,1);
end

end