-- TABLO OLUÞTURMA
/* TABLO OLUÞTURMA */

CREATE TABLE student
(
    std_id CHAR(3),
    std_name VARCHAR2(20),
    std_age NUMBER
);

INSERT INTO student VALUES('101','ahmet CAN',30);
INSERT INTO student VALUES('102','mustafa KAN',20);
INSERT INTO student VALUES('103','ayþe CANLI',40);
INSERT INTO student VALUES('104','melih CANSIZ',18);

INSERT INTO student (std_id,std_name) VALUES(105,'ali GEL');

SELECT * FROM student;

CREATE TABLE urunler
(
    ürün_id NUMBER,
    ürün_adý VARCHAR2(50),
    fiyat NUMBER(5,2),
    tett DATE,
    stok_adedi NUMBER(10)
);
INSERT INTO urunler VALUES(100,'CÝPS',5.50,'01/05/2022',500);
INSERT INTO urunler VALUES(101,'KOLA',7.50,'01/04/2025',100);
INSERT INTO urunler VALUES(102,'AYRAN',2.50,'01/07/2021',1000);
INSERT INTO urunler VALUES(103,'BÝSKÜVÝ',3.50,'01/08/2022',2000);

SELECT * FROM urunler;