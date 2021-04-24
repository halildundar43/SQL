    CREATE TABLE sehirler(
    alan_kodu NUMBER(3) DEFAULT 34,
    isim VARCHAR2(30) DEFAULT '�STANBUL',
    nufus NUMBER(8) CHECK(nufus>0)
    );
    
    INSERT INTO sehirler VALUES(54,'Sakarya',1250000);
    INSERT INTO sehirler VALUES('','',1250000);
    --3 veriyede giri� yap�l�rsa bo� b�rak�lan yerlere null atar
    
    --Par�al� veri giri�i
    INSERT INTO sehirler (nufus) VALUES(500000);
    INSERT INTO sehirler (nufus) VALUES(-10000);
    --Defaultlar sayesinde alankodu ve ismi default olarak atad�
    
    SELECT * FROM sehirler;
    
    DROP TABLE sehirler;