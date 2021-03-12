clc
clear all

A=[1 5 6; 7 -3 9; -4 0 8];
for t=1:size(A,1)
    for g=1:size(A,2)
        if A(t,g)==0
            satir_numarasi=t;
            sutun_numarasi=g;
            break
        end
    end
end
disp(satir_numarasi)
disp(sutun_numarasi)
            