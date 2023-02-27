function [hiddentext] = findtext(red,green,blue)
hiddentext=0;

if (bitand(red,4)==4)
    hiddentext=bitor(hiddentext,128);
end
if (bitand(red,2)==2)
    hiddentext=bitor(hiddentext,64);
end
if (bitand(red,1)==1)
    hiddentext=bitor(hiddentext,32);
end
if (bitand(green,4)==4)
    hiddentext=bitor(hiddentext,16);
end
if (bitand(green,2)==2)
    hiddentext=bitor(hiddentext,8);
end
if (bitand(green,1)==1)
    hiddentext=bitor(hiddentext,4);
end

if (bitand(blue,2)==2)
    hiddentext=bitor(hiddentext,2);
end
if (bitand(blue,1)==1)
    hiddentext=bitor(hiddentext,1);
end

end