function[] = Area()
-----------------------------
disp('=====================')
disp(?Acik kanal alani Hesab?')
disp('======================')
disp(?secim yapiniz:')
disp(' 1 -Trapez')
disp(' 2 -Dikdortgen')
disp(' 3 -Ucgen')
disp(' 4 -Dairesel')
disp('====================')
itype = input('');
switchitype,
case1
id = 'trape';
b = input(?Taban genisligi:');
z = input(?egim :');
y = input(?derinlik:');
A = (b+z*y)*y;
case2
id = ?Dikdortgen';
b = input(?taban genisligi:');
z = 0;
y = input(?derinlik:');
A = (b+z*y)*y;
case3
id = ?Ucgen';
b = 0;
z = input(?egim');
y = input(?derinlik:');
A = (b+z*y)*y;
otherwise
id = 'circular';
D = input(?cap:');
y = input(?derinlik (y<D):');
beta = acos(1-2*y/D);
A = D^2/4*(beta+sin(beta)*cos(beta)) ;
end
%Hesaplanan alani yazdir
fprintf('\n %s Kesitin alan?: %10.6f.\n\n',id,A)