create table personel                                                                         
(                                                                                             
id serial primary key  ,   -- serial id yi auto increment gibi otomatik artirir                                                                  
isim  varchar(20),                                                                             
yas int,                                                                                      
maas int,                                                                                     
email varchar(30)                                                                             
);                                                                                            
                                                                                              
-- auto_increment kullandığımızda otomatik olarak id ler 1 den başlayacaktır.    

insert into personel (isim, yas, maas, email) values ('Ali', 39, 12500, 'ali@gmail.com');
insert into personel (isim, yas, maas, email) values ('Derya', 28, 15000, 'derya@yahoo.com');
insert into personel (isim, yas, maas, email) values ('Sevim', 24, 25000, 'sevim@hotmail.com');
insert into personel (isim, yas, maas, email) values ('Yusuf', 32, 18000, 'yusuf@gmail.com');
insert into personel (isim, yas, maas, email) values ('Halil', 48, 22000, 'halil@gmail.com');
insert into personel (isim, yas, maas, email) values ('Ece', 54, 21000, 'ece@gmail.com');
insert into personel (isim, yas, maas, email) values ('Can', 38, 19000, 'can@gmail.com');
insert into personel (isim, yas, maas, email) values ('Elif', 27, 14000, 'elif@gmail.com');
insert into personel (isim, yas, maas, email) values ('Ezgi', 38, 21000, 'ezgi@gmail.com');
insert into personel (isim, yas, maas, email) values ('Sena', 25, 11000, NULL);

--1) tablo bilgilerini listeleyiniz
select * from personel;

--2)isim, yaş ve maaş bilgilerini listeleyiniz
select isim, yas, maas from personel;

--3)id'si 8 olan pesonel bilgilerini listeleyiniz
select * from personel where id=8;

--4)id'si 5 olan personelin isim, yas ve email bilgilerini listeleyiniz
select isim, id, yas, email from personel where id=5;

--5)30 yasindan buyuk personel bilgilerini listeleyin
select * from personel where yas>30;

--6)mmaasi 21000 olmayan personel bilgilerini listeleyiniz
select * from personel where maas<>21000;

--7) ismi a harfi ile baslayan personel bilgilerini listeleyin
select * from personel where isim ilike 'a%';

--8)ismi n harfi ile biten personeli getirin
select * from personel where isim ilike '%n';

--9)email adresi gmail olan personel biligilerini getirin
select * from personel where email ilike '%@gmail%';

--10)email adresi gmail olmayan personel bilgilerini listele
select * from personel where email  not like '%@gmail.com'; --% ile arama yaptıgımız için null gelmez

--11)id'si 3,5,7 ve 9 olan personel bilgilerini listele
select * from personel where id in(3,5,7,9);

--12)yasi 39, 48 ve 54 olmayan personel bilgilerini getirin
select * from personel where yas not in (39,48,54);

--13)yasi 30 ve 40 arasında olan personel bilgilerini listeleyin
select * from personel where yas between 30 and 40;

--14)yaşi 30 ve 40 arasında olmayan personel bilgilerini listele
select * from personel where yas not between 30 and 40;

--15)emaili null olan personel bilgielri
select* from personel where email is null;

--16)personel bilgilerini yasa göre sıralayın
select * from personel order by yas; --dogal sıralaması kucukten buyuge

17)personel bilgilerini maaşa göre sıralaayın
select * from personel order by maas;

--18) personelin yaslarını buyukten kucuge sıralayın
select * from personel order by yas desc;

--19)personelin maaslarını buyukten kucuge sıralayın
select * from personel order by maas desc;

--20)en yuksek maaş alan ilk 3 personelin bilgilerini sıralayın
select * from personel order by maas desc limit 3;


