    CREATE TABLE personel(   
        id CHAR(5),
        isim VARCHAR2(50),
        maas NUMBER(5)
    );

    INSERT INTO personel VALUES('10001', 'Ahmet Aslan', 7000);
    INSERT INTO personel VALUES( '10002', 'Mehmet Y�lmaz' ,12000);
    INSERT INTO personel VALUES('10003', 'Meryem ', 7215);
    INSERT INTO personel VALUES('10004', 'Veli Han', 5000);
    INSERT INTO personel VALUES('10005', 'Mustafa Ali', 5500);
    INSERT INTO personel VALUES('10005', 'Ay�e Can', 4000);

    SELECT * FROM personel;
    
    --id si 10002 ile 10005 aras�n� listeleyim
    SELECT * FROM personel
    WHERE �d>='10002' AND �d<='10005';
    
    --between li listeleme
    SELECT * FROM personel
    WHERE id BETWEEN '10002' AND '10005';
    
    SELECT �s�m,maas
    FROM personel
    WHERE id BETWEEN '10002' AND '10005'; --alt ve �st limitler dahildir
    
    SELECT * FROM personel
    WHERE isim BETWEEN 'Mehmet Y�lmaz' AND 'Veli Han';
    --M hafri ile V harfi aras�n� g�sterir
    
    --id si 10002 ile 10004 aras�nda olmayanlar� listeleyelim 
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
    WHERE isim LIKE 'A%'; --A ile ba�layan
    
    SELECT * FROM personel
    WHERE isim LIKE '%n'; --n ile biten
    
    SELECT * FROM personel
    WHERE maas NOT LIKE 4000; --maas� 4000 olanlar d���ndakiler
    
    SELECT * FROM personel
    WHERE isim LIKE '_el%';
    
    SELECT * FROM personel
    WHERE isim LIKE '__li%';
    
    SELECT * FROM personel
    WHERE maas LIKE '_____'; --maa�� 5 basamakl� olanlar
    
    SELECT * FROM personel
    WHERE isim LIKE 'A_____A%';--1. harfi ve 7. harfi A olan
    
    SELECT * FROM personel
    WHERE isim LIKE '%an%'; --isminde an ge�enler
    