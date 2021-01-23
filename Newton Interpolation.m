clc;
clear all;
x=[45:5:60];
fx=[0.7071 0.7660 0.8192 0.8660];
n=4;
m=zeros(4,5);
for i=1:4
    m(i,1)=x(i);
    m(i,2)=fx(i);
end
h=x(2)-x(1); 
x0=52;
p=(x0-x(2))/h;
y0=fx(2);


for j=3:5
    for i=1:n-1
        m(i,j)=m(i+1,j-1)-m(i,j-1);
    end
n=n-1;
end

f01=m(2,3);
f02=m(2,4);
y=y0+p*f01+p*(p-1)*f02/2;
fprintf('The value of sin at %f degree is %.5f\n' ,x0,y);

    
    


