% GAUSS ELÝMÝNASYON YÖNTEMÝ ÝLE Ax=B LÝNEER EÞÝTLÝÐÝNÝN ÇÖZÜLMESÝ
% pivotlama kullanýlýyor
% A matrisi N*N boyutunda tekil olmayan katsayýlar matrisidir
% B matrisi N*1 boyutundadýr
% x matrisi N*1 boyutunda çözüm matrisidir
% x matrisinin eleman deðerleri baþlangýçta sýfýr alýnmaktadýr
% C matrisi program içinde deçici olarak kullanýlmaktadýr

A = [1 -2 4 -3; 2 1 5 2; -6 2 1 4; 1 -2 8 4]; B = [1 ; 3 ; -1 ; 5];
[N N] = size(A);
x = zeros(N,1);
C = zeros (1,N+1);

% Aþaðýda geniþletilmiþ [A|B] matrisi oluþturulmaktadýr

genis = [A B];
for p=1:N-1;
    % p kolonu için kýsmi pivotlama yapýlýyor
    [Y,J] = max(abs(genis(p:N,p)));
    % p ve J kolonlarýnýn yerleri deðiþtiriliyor
    C = genis(p,:);
    genis(p,:) = genis(J+p-1,:);
    genis (J+p-1,:) = C;
    
    if genis(p,p)==0
        disp('A matrisi tekil oldugu icin program durduruluyor')
        break
    end
    % p. kolon için eliminasyon baþlýyor
    for k = p+1:N
        m = genis(k,p)/genis(p,p);
        genis(k,p:N+1) = genis(k,p:N+1) - m*genis(p,p:N+1);
    end
end
% yerine koyma iþlemi baþlýyor
A = genis(1:N,1:N);
B = genis(1:N,N+1);
x(N) = B(N)/A(N,N);
for k = N-1:-1:1
    x(k) = (B(k)-A(k,k+1:N)*x(k+1:N))/A(k,k);
end
x

% Lineer denklem sistemlerinin çözümü için '\' veya mldivide() kullanýlýr
% A.x=B  çözümü : x=A\B    veya    mldivide(A,B)    kullanýlýr

        
    
