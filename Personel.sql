    CREATE TABLE personel(   
        id CHAR(5),
        isim VARCHAR2(50),
        maas NUMBER(5)
    );

    INSERT INTO personel VALUES('10001', 'Ahmet Aslan', 7000);
    INSERT INTO personel VALUES( '10002', 'Mehmet Yýlmaz' ,12000);
    INSERT INTO personel VALUES('10003', 'Meryem ', 7215);
    INSERT INTO personel VALUES('10004', 'Veli Han', 5000);
    INSERT INTO personel VALUES('10005', 'Mustafa Ali', 5500);
    INSERT INTO personel VALUES('10005', 'Ayþe Can', 4000);

    SELECT * FROM personel;
    
    --id si 10002 ile 10005 arasýný listeleyim
    SELECT * FROM personel
    WHERE ýd>='10002' AND ýd<='10005';
    
    --between li listeleme
    SELECT * FROM personel
    WHERE id BETWEEN '10002' AND '10005';
    
    SELECT ýsým,maas
    FROM personel
    WHERE id BETWEEN '10002' AND '10005'; --alt ve üst limitler dahildir
    
    SELECT * FROM personel
    WHERE isim BETWEEN 'Mehmet Yýlmaz' AND 'Veli Han';
    --M hafri ile V harfi arasýný gösterir
    
    --id si 10002 ile 10004 arasýnda olmayanlarý listeleyelim 
    SELECT * FROM personel
    WHERE id NOT BETWEEN '10002' AND '10004';
    
    --IN komutunu kullanma
    SELECT * FROM personel
    WHERE id IN ('10002','10003','10005');
    --2.yol
    SELECT * FROM personel
    WHERE id='10002' OR id='10003' OR id='10005';
    
    SELECT * FROM personel
    WHERE maas IN (7000,12000);
    
    --LIKE komutunu kullanma
    SELECT * FROM personel
    WHERE isim LIKE 'A%'; --A ile baþlayan
    
    SELECT * FROM personel
    WHERE isim LIKE '%n'; --n ile biten
    
    SELECT * FROM personel
    WHERE maas NOT LIKE 4000; --maasý 4000 olanlar dýþýndakiler
    
    SELECT * FROM personel
    WHERE isim LIKE '_el%';
    
    SELECT * FROM personel
    WHERE isim LIKE '__li%';
    
    SELECT * FROM personel
    WHERE maas LIKE '_____'; --maaþý 5 basamaklý olanlar
    
    SELECT * FROM personel
    WHERE isim LIKE 'A_____A%';--1. harfi ve 7. harfi A olan
    
    SELECT * FROM personel
    WHERE isim LIKE '%an%'; --isminde an geçenler
    