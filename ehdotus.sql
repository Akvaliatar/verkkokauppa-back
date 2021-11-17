-- tuoteryhmän luonti
CREATE TABLE tuoteryhma (
trnro SMALLINT,
trnimi CHAR(10),
CONSTRAINT tuoteryhma_pk PRIMARY KEY (trnro)
) ;

--values
INSERT INTO tuoteryhma VALUES (1,'Eläinherkut');
INSERT INTO tuoteryhma VALUES (2,'Eläintenhoitotuotteet');
INSERT INTO tuoteryhma VALUES (3,'Askartelutarvikkeet');
INSERT INTO tuoteryhma VALUES (4,'Asusteet');
INSERT INTO tuoteryhma VALUES (5,'Palvelut');
INSERT INTO tuoteryhma VALUES (6,'Liput');

-- tuote 
CREATE TABLE tuote (
tuotenro INTEGER,
tuotenimi CHAR(30) NOT NULL,
hinta DECIMAL(5,2),
kustannus DECIMAL(5,2), 
trnro SMALLINT NOT NULL,
vari CHAR(30),
maara SMALLINT,
koko CHAR (3), -- esim xs, m, xxl
lankaTyyppiEläin CHAR(1), --L,A,S
pituus SMALLINT -- askartelua varten?
CONSTRAINT tuote_pk PRIMARY KEY (tuotenro),
CONSTRAINT tuotenimi_un UNIQUE (tuotenimi),
CONSTRAINT tuote_ryhma_fk FOREIGN KEY (trnro) 
           REFERENCES tuoteryhma (trnro)
) ;

--values
--INSERT INTO tuote VALUES (tuotenro,'tuotenimi', hinta, kustannus, trnro, väri, määrä, koko, LankaTyyppiEläin, Pituus);
INSERT INTO tuote VALUES (1,'lihapulla', 2.50, 1.50, 1, NULL, 5, NULL, NULL, NULL);

