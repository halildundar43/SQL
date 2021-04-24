    CREATE TABLE adresler
    (
    adres_id CHAR(5) REFERENCES calisanlar(id),
    sokak VARCHAR2(50),
    caddde VARCHAR2(30),
    sehir VARCHAR2(15)
    );
    
    INSERT INTO adresler VALUES('10001','Mutlu Sok', '40.Cad.','IST');
    INSERT INTO adresler VALUES('10001','Can Sok', '50.Cad.','Ankara');
    INSERT INTO adresler VALUES('10002','Aða Sok', '30.Cad.','Antep');
    
    --INSERT INTO adresler VALUES('10007','Aðac Sok', '301.Cad.','G.Antep');
    --parent ta olmayan bir id ye chiled da ekleme yapýlamaz
    
    SELECT * FROM adresler;
    SELECT * FROM calisanlar;
    
    SELECT * FROM calisanlar, adresler
    WHERE id='10001';
    
    DROP TABLE calisanlar;
    --chiled silinmeden parent silinemez
    
    --foreýgn key için alternatif yöntem
    CREATE TABLE adresler
    (
    adres_id CHAR(5),
    sokak VARCHAR2(50),
    caddde VARCHAR2(30),
    sehir VARCHAR2(15),
    CONSTRAINT id_fk FOREIGN KEY (adres_id) REFERENCES calisanlar (id)
    );