    CREATE TABLE calisanlar
    (
    id CHAR(5) PRIMARY KEY,
    isim VARCHAR2(50) UNIQUE,
    maas NUMBER(5)NOT NULL,
    ise_baslama DATE
    );
    
    INSERT INTO calisanlar VALUES('10001','Ahmet ASLAN',7000,'13-04-2018');
    INSERT INTO calisanlar VALUES('10002','Mehmet Yýlmaz',12000,'14-04-2018');
    INSERT INTO calisanlar VALUES('10003','',5000,'14-04-2018');
    INSERT INTO calisanlar VALUES('10004','Veli Han',5000,'14-04-2018');
    INSERT INTO calisanlar VALUES('10005','Mustafa Ali',5000,'14-04-2018');
    
    INSERT INTO calisanlar VALUES('10006','Mustafa Al',0,'14-04-2018');
    
    --INSERT INTO calisanlar VALUES('10005', 'Canan Bali', 4000, '14-04-2019');
    --id kýsmý uniq olmalý ayný id den baþkasýný eklemez
    --id kýsmý null da olamaz yani boþ býrakýlamaz
    
    SELECT * FROM calisanlar;
    
    DROP TABLE calisanlar;
    --tabloyu komple siler
    
    DELETE calisanlar
    WHERE id='10006';
    --tablodaki tek bir kýsmý silmek için kullanýlýr
    
    ----------------------------------------------------
    --alternatif primary tanýmlama yöntemi
    CREATE TABLE calisanlar
    (
    id CHAR(5),
    isim VARCHAR2(50) UNIQUE,
    maas NUMBER(5)NOT NULL,
    ise_baslama DATE,
    CONSTRAINT id_pk PRIMARY KEY (id)
    );
    --CONSTRAINT id_pk PRIMARY KEY (id) DÝSABLE devre dýþý býrakýr
    