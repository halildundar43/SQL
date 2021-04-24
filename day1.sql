    CREATE TABLE calisanlar
    (
    id CHAR(5) PRIMARY KEY,
    isim VARCHAR2(50) UNIQUE,
    maas NUMBER(5)NOT NULL,
    ise_baslama DATE
    );
    
    INSERT INTO calisanlar VALUES('10001','Ahmet ASLAN',7000,'13-04-2018');
    INSERT INTO calisanlar VALUES('10002','Mehmet Y�lmaz',12000,'14-04-2018');
    INSERT INTO calisanlar VALUES('10003','',5000,'14-04-2018');
    INSERT INTO calisanlar VALUES('10004','Veli Han',5000,'14-04-2018');
    INSERT INTO calisanlar VALUES('10005','Mustafa Ali',5000,'14-04-2018');
    
    INSERT INTO calisanlar VALUES('10006','Mustafa Al',0,'14-04-2018');
    
    --INSERT INTO calisanlar VALUES('10005', 'Canan Bali', 4000, '14-04-2019');
    --id k�sm� uniq olmal� ayn� id den ba�kas�n� eklemez
    --id k�sm� null da olamaz yani bo� b�rak�lamaz
    
    SELECT * FROM calisanlar;
    
    DROP TABLE calisanlar;
    --tabloyu komple siler
    
    DELETE calisanlar
    WHERE id='10006';
    --tablodaki tek bir k�sm� silmek i�in kullan�l�r
    
    ----------------------------------------------------
    --alternatif primary tan�mlama y�ntemi
    CREATE TABLE calisanlar
    (
    id CHAR(5),
    isim VARCHAR2(50) UNIQUE,
    maas NUMBER(5)NOT NULL,
    ise_baslama DATE,
    CONSTRAINT id_pk PRIMARY KEY (id)
    );
    --CONSTRAINT id_pk PRIMARY KEY (id) D�SABLE devre d��� b�rak�r
    