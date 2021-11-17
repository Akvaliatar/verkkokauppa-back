-- tuoteryhmän luonti
CREATE TABLE tuoteryhma (
trnro SMALLINT,
trnimi CHAR(10),
CONSTRAINT tuoteryhma_pk PRIMARY KEY (trnro)
) ;

--values tuoteryhmä
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

--values tuote
--INSERT INTO tuote VALUES (tuotenro,'tuotenimi', hinta, kustannus, trnro, väri, määrä, koko, LankaTyyppiEläin, Pituus);
INSERT INTO tuote VALUES (1,'lihapulla', 2.50, 1.50, 1, NULL, 5, NULL, NULL, NULL);

-- asiakas
CREATE TABLE asiakas (
asID CHAR(6),
asETUnimi CHAR(20) NOT NULL,
asSUKUnimi CHAR(20) NOT NULL,
postinro CHAR(5), 
postitmp CHAR(10),
puh INTEGER, 
sposti CHAR(64), 
CONSTRAINT asiakas_pk PRIMARY KEY (asID),
CONSTRAINT asnimi_un UNIQUE (asnimi)
) ;


--tilaus
CREATE TABLE tilaus (
tilausID INTEGER NOT NULL,
asID CHAR(6) NOT NULL, 
tilauspvm DATETIME NOT NULL, /* tämä muutettava käytettävän sql-tuotteen mukaan*/
tapa CHAR(1) NOT NULL,
tila CHAR(1),
CONSTRAINT tilaus_pk PRIMARY KEY (tilausnro),
CONSTRAINT tilaus_asiakas_fk FOREIGN KEY (astunnus) 
           REFERENCES asiakas (astunnus)
) ;

--values tilaus


-- Tilausrivi-taulu
CREATE TABLE tilausrivi (
tilausID INTEGER NOT NULL,
rivinro SMALLINT NOT NULL,
tuotenro INTEGER, 
kpl INTEGER,
CONSTRAINT tilausrivi_pk PRIMARY KEY (tilausnro, rivinro),
CONSTRAINT tilausrivi_tuote_fk FOREIGN KEY (tuotenro) 
           REFERENCES tuote (tuotenro)
);

--values tilausrivi