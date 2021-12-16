drop database if exists kotielainpuisto;

CREATE DATABASE kotielainpuisto;

use kotielainpuisto;

CREATE TABLE tuoteryhma (
<<<<<<< Updated upstream
trnro SMALLINT AUTO_INCREMENT,
=======
trnro INTEGER AUTO_INCREMENT,
>>>>>>> Stashed changes
trnimi CHAR(21),
teksti CHAR(200),
CONSTRAINT tuoteryhma_pk PRIMARY KEY (trnro)
) ;

-- values tuoteryhmä
INSERT INTO tuoteryhma VALUES (1,'Eläinherkut', 'Täältä löytyy tilalla tuotettuja syötäviä tuotteita');
INSERT INTO tuoteryhma VALUES (2,'Eläintenhoitotuotteet', 'Täältä löydät eläinystävällisiä hoitotuotteita.');
INSERT INTO tuoteryhma VALUES (3,'Askartelutarvikkeet', 'Täältä löytyy askartelutarvikkeita puuhasteluun.');
INSERT INTO tuoteryhma VALUES (4,'Asusteet', 'Täältä löydät tilamme villasta tehtyjä vaatteita ja asusteita itselle sekä nelijalkaiselle ystävällesi.');
INSERT INTO tuoteryhma VALUES (5,'Palvelut', 'Tästä pääset katselemaan, mitä eri palveluita tarjoamme.');
INSERT INTO tuoteryhma VALUES (6,'Liput', 'Täältä voit ostaa ennakkoon päivälipun tai kausikortin.');


-- tuote 
CREATE TABLE tuote (
<<<<<<< Updated upstream
tuotenro INTEGER PRIMARY KEY AUTO_INCREMENT,
=======
tuotenro INTEGER AUTO_INCREMENT PRIMARY KEY,
>>>>>>> Stashed changes
tuotenimi CHAR(35) UNIQUE NOT NULL,
hinta DECIMAL(5,2),
kustannus DECIMAL(5,2), 
trnro SMALLINT  NOT NULL,
vari CHAR(40),
maara CHAR(4), -- grammoista kiloiksi esim. 1000g -> 1kg
koko CHAR (3), -- esim xs, m, xxl
lankaTyyppiElain CHAR(12), -- L,A,S
pituus CHAR(4), -- askartelua varten?
teksti CHAR(75)
) ;


-- values tuote
-- INSERT INTO tuote VALUES (tuotenro,'tuotenimi', hinta, kustannus, trnro, väri, määrä, koko, LankaTyyppiEläin, Pituus);

-- asiakas
CREATE TABLE asiakas (
asID INTEGER AUTO_INCREMENT PRIMARY KEY,
asETUnimi CHAR(20) NOT NULL,
asSUKUnimi CHAR(20) NOT NULL,
postinro CHAR(5), 
postitmp CHAR(20),
puh INTEGER, 
sposti CHAR(64)
) ;

-- values asiakas

-- Kanta-asiakas-taulu 
CREATE TABLE kanta_asiakas (
    asID INTEGER AUTO_INCREMENT PRIMARY KEY,
    nimike CHAR(25) UNIQUE,
    salasana CHAR(20),
    pisteet SMALLINT
);

-- tilaus
CREATE TABLE tilaus (
tilausID INTEGER NOT NULL,
asID INTEGER, 
tilauspvm DATETIME NOT NULL, /* tämä muutettava käytettävän sql-tuotteen mukaan*/
tapa CHAR(1) NOT NULL,
tila CHAR(1),
CONSTRAINT tilaus_pk PRIMARY KEY (tilausID),
CONSTRAINT tilaus_asiakas_fk FOREIGN KEY (asID) 
           REFERENCES asiakas (asID)
) ;

-- values tilaus


-- Tilausrivi-taulu
CREATE TABLE tilausrivi (
tilausID INTEGER NOT NULL,
rivinro SMALLINT NOT NULL,
tuotenro INTEGER, 
kpl INTEGER,
CONSTRAINT tilausID_pk PRIMARY KEY (tilausID, rivinro),
CONSTRAINT tilausID_tuote_fk FOREIGN KEY (tuotenro) 
           REFERENCES tuote (tuotenro)
);

-- values tilausrivi