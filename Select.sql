    CREATE TABLE ogrenciler(
    id NUMBER(9),
    isim VARCHAR2(50),
    adres VARCHAR2(100),
    sýnav_notu NUMBER(3)
    );
    
    INSERT INTO ogrenciler VALUES(123,'Ali Can','Ankara',75);
    INSERT INTO ogrenciler VALUES(124,'Merve Gul','Ankara',85);
    INSERT INTO ogrenciler VALUES(125,'Kemal Yasa','Ýstanbul',85);
    
    SELECT * FROM ogrenciler;
    
    SELECT * FROM ogrenciler
    WHERE sýnav_notu>80;
    
    SELECT isim,sýnav_notu
    FROM ogrenciler
    WHERE sýnav_notu>80;
    
    DROP TABLE ogrenciler;