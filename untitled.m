sayi = input('1-24 arasinda bir tam sayi giriniz=');
switch (sayi)
    case {5,6}, 'sabaha karsi'
    case {7,8,9,10}, 'sabah vakti'
    case {11,12,13}, 'ogle vakti'
    case {14,15,16,17}, 'ogleden sonra'
    case {18,19,20,21}, 'aksam vakti'
    case {22,23,24,1,2,3,4}, 'gece vakti'
    otherwise 'sayi 1-24 araliginin disinda'
end