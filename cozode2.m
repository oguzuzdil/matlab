function di_dt = cozode2(t,a)
di_dt = -15*a + 2*cos(2*t) + t;       %matlab'te i karma��k say� oldu�u i�in
                                      %a kullan�lm��
end