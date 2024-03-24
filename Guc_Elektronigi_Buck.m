x = input("Dil seçiniz Türkçe için [T],Choose a language For English press [E]; ","s")

if(x=="T");
    Vo = input("v0 Çıkış Voltajını giriniz: ");
    Vi = input("Vi Giriş Volajını giriniz:  ");
    Vr = input("İstenilen maksimum yüzde çıkış Voltaj dalgalanmasını giriniz:% ")/100;
    R = input("Kullanmak istediğiniz direnç değerini giriniz: ")
    F = 1000*input("Hangi Frekans aralığını kullanmak istediğinizi giriniz (KHz cinsinden):KHz ")

elseif(x=="E");
    Vo = input("Write the V0 output Voltage: ");
    Vi = input("Write the Vi input Voltage: ");
    Vr = input("Write the max percent of Voltage ripple:% ");
    R = input("Write the Resistence value you want to use: ");
    F = input("Write the switching frequency arbitrarily (From KHz type):KHz ");

else;
    disp("Yanlış bir değer girdiniz!, You wrote a wrong value!");
end

d = Vo/Vi;
lmin = ((1-d)*R)/(2*F);
l = (lmin*1.25);
il = (Vo/R);
dil = ((Vi-Vo)/l*d*(1/F));
imax = (il+dil/2);
imin = (il-dil/2);
c = ((1-d)/(8*l*(Vr)*(F^2)));


z = sprintf("Duty Ratio is %s, İnductor size is %d, Average İnductor Current is %f, Change into the İnductor current is %g" , d, l, il, dil);
y = sprintf("Maximum and Minimum İnductor currents are Imax %s, and Imin %d, The capacitor Value is %f", imax, imin, c)
j = sprintf("Lmin: %s", lmin)
disp(z);
disp(y);
disp(j);

if(x=="T");
    p=input("Programı kapatmak veya yeniden başlatmak ister misiniz? Kapatmak için (C), Yeniden başlatmak için (R)","s")
else
    p=input("Would you want to close or restart the app? For closeing (C), For Restarting(R)","s")
end

if(p=="C");
    exit
elseif(p=="R");
    clear all
    run Guc_Elektronigi_Buck.m
else;
    disp("Yanlış bir değer girdiniz!, You wrote a wrong value!")
end











