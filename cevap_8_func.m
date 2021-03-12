function cevap_8_func( A )
[m,n]=size(A);
flag1=0;
flag2=0;
if m==n
    disp('matris kare matristir')
    % Matrisi 90 derece dondurerek yeni matris elde edelim
    % Bu matris de simetrik ise A matrisi bisimetriktir 
    B=rot90(A) ;  
    for i=1:m
        for j=(i+1):n
            if A(i,j)~=A(j,i)
              flag1=1; %simetrik degilse flag1=1 olacak
            end
            if B(i,j)~=B(j,i)
		    %ikinci kosegene gore simetrik degilse flag2=1 olacak
              flag2=1; 
            end
        end
    end
else
    disp('Matris Kare Matris Degildir !')
    return
end
if flag1==0 && flag2==0
    disp('Matris Bisimetriktir')
elseif flag1==0 && flag2==1
    disp('Matris Simetriktir')
else
    disp('Matris Simetrik Degildir')
end
end
