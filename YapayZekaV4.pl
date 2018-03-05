yas(5,fordfocus).
yas(3,fordfiesta).
yas(1,megane).
yas(4,clio).
yas(5,cruze).
yas(3,c200).
yas(1,a320).
yas(3,a407).
yas(4,leon).
yas(6,bmw520d).
yas(5,aveo).
yas(12,lacetti).
yas(2,fiat500).
yas(17,mazda323).

renk(mavi,fordfocus).
renk(beyaz,fordfiesta).
renk(siyah,megane).
renk(gri,clio).
renk(k�rm�z�,leon).
renk(gri,cruze).
renk(siyah,c200).
renk(lacivert,a320).
renk(beyaz,a407).
renk(beyaz,bmw520d).
renk(beyaz,aveo).
renk(gumusgri,lacetti).
renk(siyah,fiat500).
renk(mavi,mazda323).

kilometre(80000,fordfocus).
kilometre(56000,fordfiesta).
kilometre(10000,megane).
kilometre(90000,clio).
kilometre(50800,leon).
kilometre(70000,cruze).
kilometre(20000,c200).
kilometre(14000,a320).
kilometre(50000,a407).
kilometre(81000,bmw520d).
kilometre(157500,aveo).
kilometre(156000,lacetti).
kilometre(33400,fiat500).
kilometre(235000,mazda323).

yakit_turu(benzin,fordfocus).
yakit_turu(benzin,fordfiesta).
yakit_turu(benzin,megane).
yakit_turu(dizel,clio).
yakit_turu(benzin,leon).
yakit_turu(gazl�,cruze).
yakit_turu(benzin,c200).
yakit_turu(benzin,a320).
yakit_turu(dizel,a407).
yakit_turu(dizel,bmw520d).
yakit_turu(benzin,aveo).
yakit_turu(lpg,aveo).
yakit_turu(benzin,lacetti).
yakit_turu(lpg,lacetti).
yakit_turu(dizel,fiat500).
yakit_turu(lpg,mazda323).
yakit_turu(benzin,mazda323).

marka(ford,fordfocus).
marka(ford,fordfiesta).
marka(renault,megane).
marka(renault,clio).
marka(seat,leon).
marka(chevrolet,cruze).
marka(mercedes,c200).
marka(bmw,a320).
marka(peugeot,a407).
marka(bmw,bmw520d).
marka(chevrolet,aveo).
marka(chevrolet,lacetti).
marka(fiat,fiat500).
marka(mazda,mazda323).

fiyat(60000,fordfocus).
fiyat(51000,fordfiesta).
fiyat(73000,megane).
fiyat(45000,clio).
fiyat(75000,leon).
fiyat(42000,cruze).
fiyat(140000,c200).
fiyat(200000,a320).
fiyat(41200,a407).
fiyat(183500,bmw520d).
fiyat(28500,aveo).
fiyat(26000,lacetti).
fiyat(33400,fiat500).
fiyat(23000,mazda323).


fiyat_sinirla(MaxFiyat,Araba):-fiyat(X,Araba),(X<MaxFiyat).
km_sinirla(MaxKM,Araba):-(kilometre(X,Araba),(X<MaxKM;X=MaxKM)).
yas_sinirla(MaxYas,Araba):-(yas(X,Araba),(X<MaxYas;X=MaxYas)).

araba_bul(Araba,Marka,MaxFiyat,MaxKM,Yakit,MaxYas,Renk):- marka(Marka,Araba),
           fiyat_sinirla(MaxFiyat,Araba),
           km_sinirla(MaxKM,Araba),
           yakit_turu(Yakit,Araba),
           yas_sinirla(MaxYas,Araba),
           renk(Renk,Araba).









