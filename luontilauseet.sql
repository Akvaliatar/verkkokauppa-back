CREATE DATABASE kotielainpuisto;
-- Posti-taulu eli osoite, sillä sisältää muutakin
CREATE TABLE osoite (
    tienimi CHAR(85),
    tienro SMALLINT,
    postitmp CHAR (20),
    postinro CHAR(5)
);
-- ...........................................................
-- Asiakas-taulu, index täytyy lisätä
CREATE TABLE asiakas (
    asID INTEGER AUTO_INCREMENT PRIMARY KEY, -- eri kuin kanta-asiakas ID
    asETUnimi CHAR(30),
    asSUnimi CHAR(30),
    puh INTEGER,
    sposti CHAR(64),

);
-- ...........................................................
--Kanta-asiakas-taulu ?
CREATE TABLE kanta_asiakas (
    asID INTEGER AUTO_INCREMENT PRIMARY KEY,
    nimike CHAR(25),
    pisteet SMALLINT
);
-- ...........................................................
-- kurssimuodot
CREATE TABLE kurssiMuoto (
    kID INTEGER PRIMARY KEY,
    kNimi char(40)
);
-- kurssit
CREATE TABLE kurssi(
    trNimi char(40) PRIMARY KEY,
    kID INTEGER,
    FOREIGN KEY (kID)
);
-- asusteet
CREATE TABLE asuste(
    trNimi PRIMARY KEY,
    koko CHAR(3) NOT NULL, -- laitoin kirjaimin -> 'XS', 'M', 'XXL'. Voidaan vaihtaa jos numeroin on parempi
    väri CHAR(35) NOT NULL
);
-- askartelu/kädentaito
CREATE TABLE askartelu(
    trNimi PRIMARY KEY,
    väri CHAR(30) NOT NULL,
    lankaTyyppiEläin CHAR(1) NOT NULL, --L,A,S
    pituus SMALLINT
);
-- herkut
CREATE TABLE herkku(
    trNimi PRIMARY KEY
    koko CHAR(25) NOT NULL -- määritetään tuotteen koko  kirjiamin esim. 500 mg tai 1 kg
);
-- hoitotarvikkeet
CREATE TABLE hoito(
    trNimi PRIMARY KEY
    koko CHAR(25)
);
-- ...........................................................
-- Tuoteryhmä-taulu
CREATE TABLE tuoteryhma (
    tuoteryhma,
    trNimi CHAR(35) NOT NULL,
    FOREIGN KEY (tuoteryhma)
    REFERENCES ...  (trID)
);
-- ...........................................................
-- Tuote-taulu
CREATE TABLE tuote (
    tuotenro PRIMARY KEY,
    tuotenimi NOT NULL,
    hinta DECIMAL(4,2) NOT NULL,
    tuoteryhma,
    FOREIGN KEY (tuoteryhma)
    REFERENCES tuoteryhma (tuoteryhma)
);
-- ...........................................................
-- Tilaus-taulu
CREATE TABLE tilaus (
    tilausID PRIMARY KEY,
    asID,
    tilauspvm DATE,
    tila CHAR(1), -- tila kirjaimin -> 'V' 'T' 'M'
    tapa CHAR(1), -- tapa kirjaimin -> K P V
    koodi,
    FOREIGN KEY (asID)
    REFERENCES asiakas(asID)
);

-- Tilausrivi-taulu
CREATE TABLE tilausrivi (
    tilausID,
    tuotenro,
    rivinro PRIMARY KEY,
    kpl,
    FOREIGN KEY (tilausID)
    REFERENCES tilaus (tilausID),
    FOREIGN KEY (tuotenro)
    REFERENCES tuote (tuotenro)
);

