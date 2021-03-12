k=7; a=15;
while k<17
    if(k<5 || k^2<50)
        disp(k)
    elseif (k>=10 && k<13)
        a=a+k;
        disp(a)
    else
        a=a-1;
        disp(k)
    end
    k=k+3;
end