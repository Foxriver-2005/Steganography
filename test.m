clc;
clear;
text=65;
red=2;
green=17;
blue=10;
[mred,mgreen,mblue]= hidetxt(red,green,blue,text)

[hiddentext] = findtext(mred,mgreen,mblue)

disp(mred);
disp(mgreen);
disp(mblue);