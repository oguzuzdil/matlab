function di_dt = cozode2(t,a)
di_dt = -15*a + 2*cos(2*t) + t;       %matlab'te i karmaþýk sayý olduðu için
                                      %a kullanýlmýþ
end