function [late4one , xbar1] = Sim(time,carnumber)
clc
x1=round(time*rand(1,carnumber));
x1=sort(x1);
% x2=round(time*rand(1,carnumber));
% x2=sort(x2)
% x3=round(time*rand(1,carnumber));
% x3=sort(x3)
% x4=round(time*rand(1,carnumber));
% x4=sort(x4)
% x1=[1 3 4 5 6 8 10 11 20 20]
%--------------------------------------------------------------------
I=0;
D=40;
D4=D*4;
L=2;
S=4;
%x1(2)=[]; % remove element form vector
index=1;
late=0;
xbar=[];
%---------------------------------------------------------------------
while (numel(x1)>0 & index <= numel(x1))

if(x1(index)<(I+1)*D)
   %---------------------------------------------- 
   z=mod(x1(index),D4)-D;
   if z>D
       z=z-D;
   else
       z=0;
   end
   %----------------------------------------------    
   late1 =  floor((index-1)/S)*L + D4*(I-floor((x1(index)-1)/D)) + z;
   xbar = [xbar late1];
   late = late + late1;
end

%floor((index-1)/S)*L
newTime=x1(index)+floor((index-1)/S)*L;
if (newTime > (I+1)*D)
    I=I+1;
    x1=x1(index:end);
    index =0;
end

index=index+1;
end

xbar1=xbar; % Drow Bar Chart in Matlab
%bar(xbar);
%plot(xbar);
late4one=round(late/carnumber);
end