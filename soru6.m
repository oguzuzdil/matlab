n=2; p=5;
while n<12
    if (p>5 && n^2<20)
        n=p+1;
        disp(n)
    elseif (n<=9 || p<9)
        disp(p)
    else
        n=n+1;
        disp(n)
    end
    n=n+1;
    p=p+1;
end

