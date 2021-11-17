/* Tästä tiedostosta on helppo lisätä databaseen tuotteita yms */

/*tuoteryhmien numerot
1 = Eläinherkut
2 = Eläintenhoitotuotteet
3 = Askartelutarvikkeet
4 = Asusteet
5 = Palvelut
6 = Liput
*/

-- INSERT INTO tuote VALUES (tuotenro,'tuotenimi', hinta, kustannus, trnro, väri, määrä, koko, LankaTyyppiEläin, Pituus);

INSERT INTO tuote VALUES (1,'lihapulla', 2.50, 1.50, 1, NULL, 5, NULL, NULL, NULL);