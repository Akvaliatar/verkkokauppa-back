CREATE DATABASE kotielainpuisto;
-- Posti-taulu eli osoite, sillä sisältää muutakin
CREATE TABLE osoite (
    tienimi CHAR(85),
    tienro SMALLINT,
    postitmp CHAR (20)),
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
    asID INTEGER AUTO_INCREMENT,
    nimike CHAR(25),
    pisteet SMALLINT
);
-- ...........................................................
-- kurssimuodot
CREATE TABLE kurssiMuoto (
    kID PRIMARY KEY,
    kNimi char(40)
);
-- kurssit
CREATE TABLE kurssi(
    trNimi PRIMARY KEY,
    kID,
    FOREIGN KEY (kID)
);
-- asusteet
CREATE TABLE asuste(
    trNimi PRIMARY KEY,
    koko, -- numeroin vai kirjaimin?
    väri
);
-- askartelu/kädentaito
CREATE TABLE askartelu(
    trNimi PRIMARY KEY,
    väri,
    lankaTyyppiEläin, --L,A,S
    pituus
);
-- herkut
CREATE TABLE herkku(
    trNimi PRIMARY KEY
);
-- hoitotarvikkeet
CREATE TABLE hoito(
    trNimi PRIMARY KEY
);
-- ...........................................................
-- Tuoteryhmä-taulu
CREATE TABLE tuoteryhma (
    tuoteryhma,
    trNimi,
    FOREIGN KEY (tuoteryhma)
    REFERENCES ...  (trID)
);
-- ...........................................................
-- Tuote-taulu
CREATE TABLE tuote (
    tuotenro PRIMARY KEY,
    tuotenimi,
    hinta,
    tuoteryhma,
    FOREIGN KEY (tuoteryhma)
    REFERENCES tuoteryhma (tuoteryhma)
);
-- ...........................................................
-- Tilaus-taulu
CREATE TABLE tilaus (
    tilausID PRIMARY KEY,
    asID ,
    tilauspvm,
    tila,
    tapa,
    koodi
);

-- Tilausrivi-taulu
CREATE TABLE tilausrivi (
    tilausID,
    tuotenro,
    kpl
);

