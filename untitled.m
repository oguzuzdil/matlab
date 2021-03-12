% GAUSS EL�M�NASYON Y�NTEM� �LE Ax=B L�NEER E��TL���N�N ��Z�LMES�
% pivotlama kullan�l�yor
% A matrisi N*N boyutunda tekil olmayan katsay�lar matrisidir
% B matrisi N*1 boyutundad�r
% x matrisi N*1 boyutunda ��z�m matrisidir
% x matrisinin eleman de�erleri ba�lang��ta s�f�r al�nmaktad�r
% C matrisi program i�inde de�ici olarak kullan�lmaktad�r

A = [1 -2 4 -3; 2 1 5 2; -6 2 1 4; 1 -2 8 4]; B = [1 ; 3 ; -1 ; 5];
[N N] = size(A);
x = zeros(N,1);
C = zeros (1,N+1);

% A�a��da geni�letilmi� [A|B]�matrisi olu�turulmaktad�r

genis = [A B];
for p=1:N-1;
    % p kolonu i�in k�smi pivotlama yap�l�yor
    [Y,J] = max(abs(genis(p:N,p)));
    % p ve J kolonlar�n�n yerleri de�i�tiriliyor
    C = genis(p,:);
    genis(p,:) = genis(J+p-1,:);
    genis (J+p-1,:) = C;
    
    if genis(p,p)==0
        disp('A matrisi tekil oldugu icin program durduruluyor')
        break
    end
    % p. kolon i�in eliminasyon ba�l�yor
    for k = p+1:N
        m = genis(k,p)/genis(p,p);
        genis(k,p:N+1) = genis(k,p:N+1) - m*genis(p,p:N+1);
    end
end
% yerine koyma i�lemi ba�l�yor
A = genis(1:N,1:N);
B = genis(1:N,N+1);
x(N) = B(N)/A(N,N);
for k = N-1:-1:1
    x(k) = (B(k)-A(k,k+1:N)*x(k+1:N))/A(k,k);
end
x

% Lineer denklem sistemlerinin ��z�m� i�in '\' veya mldivide() kullan�l�r
% A.x=B  ��z�m� : x=A\B    veya    mldivide(A,B)    kullan�l�r

        
    
