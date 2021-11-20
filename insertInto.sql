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

INSERT INTO tuote VALUES (1,'lihapullia', 2.50, 1.50, 1, NULL, '250g', NULL, NULL, NULL);
INSERT INTO tuote VALUES (2,'maapähkinäkeksit S', 4.90, 2.50, 1, NULL, '100g', 'S', NULL, NULL); -- small-pussi (koirille)
INSERT INTO tuote VALUES (3,'maapähkinäkeksit M', 7.90, 2.90, 1, NULL, '175g', 'M', NULL, NULL); -- medium-pussi
INSERT INTO tuote VALUES (4,'maapähkinäkeksit L', 8.90, 3.10, 1, NULL, '200g', 'L', NULL, NULL); -- large-pussi
INSERT INTO tuote VALUES (5, 'aaveluut S', 5.90, 3.00, 1, NULL, '150g', 'S', NULL, NULL); -- samanlainen pussijärjestelmä kuin edellisissä (koirille), teen erikseen ne lisätietotekstit näille myöhemmin (ei oikeita luita :'D)
INSERT INTO tuote VALUES (6, 'aaveluut M', 6.90, 3.30, 1, NULL, '200g', 'M', NULL, NULL);
INSERT INTO tuote VALUES (7, 'aaveluut L', 8.90, 5.00, 1, NULL, '300g', 'L', NULL, NULL);
INSERT INTO tuote VALUES (8, 'fisut S', 3.90, 2.00, 1, NULL, '75g', 'S', NULL, NULL); -- samanlainen pussijärjestelmä kuin edellisissä (kissoille)
INSERT INTO tuote VALUES (9, 'fisut M', 4.10, 2.50, 1, NULL, '100g', 'M', NULL, NULL);
INSERT INTO tuote VALUES (10, 'fisut L', 4.90, 4.00, 1, NULL, '150g', 'L', NULL, NULL);
INSERT INTO tuote VALUES (11, 'mix', 7.90, 6.00, 1, NULL, '300g', 'L', NULL, NULL); -- pelkkä large tällä (koirille ja kissoille)
INSERT INTO tuote VALUES (12, 'hunajavoide S', 20.00, 12.50, 2, NULL, '150g', 'S', NULL, NULL); -- kissoile, koirille, hevosille jne. (._. ihan oikea tuote)
INSERT INTO tuote VALUES (13, 'hunajavoide M', 30.00, 25.00, 2, NULL, '250g', 'M', NULL, NULL);
INSERT INTO tuote VALUES (14, 'hunajavoide L', 40.00, 37.50, 2, NULL, '350g', 'L', NULL, NULL);
INSERT INTO tuote VALUES (15, 'punottu pulmapallo', 25.00, 15.00, 2, 'punainen', '100g', NULL, NULL, NULL); -- herkuille (kissoille ja koirille), '12cm (halkaisija)'
INSERT INTO tuote VALUES (16, 'höyhenkeppilelu', 3.90, 2.00, 2, 'valkoharmaa', '200g', NULL, NULL, NULL); -- '60cm', 
INSERT INTO tuote VALUES (17, 'villapeitto', 40.00, 30.00, 2, 'harmaa', '600g', NULL, NULL, NULL); -- '70x90cm'
INSERT INTO tuote VALUES (18, 'puhdasta huovutusvillaa valo', 6.90, 5.00, 3, 'luonnonvalkoinen', '100g', NULL, NULL, NULL); -- korkeus x leveys x syvyys
INSERT INTO tuote VALUES (19, 'puhdasta huovutusvillaa pilvi', 6.90, 5.00, 3, 'luonnonharmaa', '100g', NULL, NULL, NULL);
INSERT INTO tuote VALUES (20, 'puhdasta huovutusvillaa varjo', 6.90, 5.00, 3, 'luonnonmusta', '100g', NULL, NULL, NULL);
INSERT INTO tuote VALUES (21, 'puhdasta huovutusvillaa ruska', 6.90, 5.00, 3, 'luonnonruskea', '100g', NULL, NULL, NULL);
INSERT INTO tuote VALUES (22, 'villalankakerä Unto valo', 7.80, 6.90, 3, 'luonnonvalkoinen', '100g', NULL, 'lampaanvilla', '200m'); -- täytyy laittaa että hinnat on samat kaikilla eettisistä syistä (oon laiska)
INSERT INTO tuote VALUES (23, 'villalankakerä Unto pilvi', 7.80, 6.90, 3, 'luonnonharmaa', '100g', NULL, 'lampaanvilla', '200m'); -- 'tex 140x2'
INSERT INTO tuote VALUES (24, 'villalankakerä Unto varjo', 7.80, 6.90, 3, 'luonnonmusta', '100g', NULL, 'lampaanvilla', '200m');
INSERT INTO tuote VALUES (25, 'villalankakerä Unto ruska', 7.80, 6.90, 3, 'luonnonruskea', '100g', NULL, 'lampaanvilla', '200m');
INSERT INTO tuote VALUES (26, 'villalankakerä Alca valo', 7.80, 6.90, 3, 'luonnonvalkoinen', '100g', NULL, 'alpakanvilla', '200m');
INSERT INTO tuote VALUES (27, 'villalankakerä Alca pilvi', 7.80, 6.90, 3, 'luonnonharmaa', '100g', NULL, 'alpakanvilla', '200m');
INSERT INTO tuote VALUES (28, 'villalankakerä Alca varjo', 7.80, 6.90, 3, 'luonnonmusta', '100g', NULL, 'alpakanvilla', '200m');
INSERT INTO tuote VALUES (29, 'villalankakerä Alca kajastus', 7.80, 6.90, 3, 'luonnonruskea', '100g', NULL, 'alpakanvilla', '200m');
INSERT INTO tuote VALUES (30, 'villalankakerä Una valo', 7.80, 6.90, 3, 'luonnonvalkoinen', '100g', NULL, 'sekoitus', '200m');
INSERT INTO tuote VALUES (31, 'villalankakerä Una pilvi', 7.80, 6.90, 3, 'luonnonharmaa', '100g', NULL, 'sekoitus', '200m');
INSERT INTO tuote VALUES (32, 'villalankakerä Una varjo', 7.80, 6.90, 3, 'luonnonmusta', '100g', NULL, 'sekoitus', '200m');
INSERT INTO tuote VALUES (33, 'villalankakerä Una kajastus', 7.80, 6.90, 3, 'luonnonruskea', '100g', NULL, 'sekoitus', '200m');
INSERT INTO tuote VALUES (34, 'villahuivi Kuje valo', 139.00, 114.90, 4, 'luonnonvalkoinen', 'M', NULL, 'lampaanvilla', NULL); -- '80x200cm'
INSERT INTO tuote VALUES (35, 'villahuivi Kuje pilvi', 139.00, 114.90, 4, 'luonnonharmaa',NULL, 'M', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (36, 'villahuivi Kuje kajo', 139.00, 114.90, 4, 'valkoinen', NULL, 'M', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (37, 'villahuivi Kuje varjo', 139.00, 114.90, 4, 'luonnonmusta', NULL, 'M', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (38, 'villahuivi Volt ahti', 146.00, 120.90, 4, 'sininen', NULL, 'M', 'sekoitus', NULL);
INSERT INTO tuote VALUES (39, 'villahuivi Volt tonttu', 146.00, 120.90, 4, 'punainen', NULL, 'M', 'sekoitus', NULL);
INSERT INTO tuote VALUES (40, 'villahuivi Volt hippa', 146.00, 120.90, 4, 'vihreä', NULL, 'M', 'sekoitus', NULL);
INSERT INTO tuote VALUES (41, 'villapontso Maahinen valkea', 176.00, 150.00, 4, 'valkoinen, keltainen ja vaaleanvihreä', NULL, 'S', 'alpakanvilla', NULL); -- '120-140cm'
INSERT INTO tuote VALUES (42, 'villapontso Maahinen ruska', 176.00, 150.00, 4, 'oranssi, punaruskea ja musta', NULL, 'S', 'alpakanvilla', NULL);
INSERT INTO tuote VALUES (43, 'villapontso Maahinen boreal', 176.00, 150.00, 4, 'neonväri ja tummansininen', NULL, 'S', 'alpakanvilla', NULL);
INSERT INTO tuote VALUES (44, 'villapontso Maahinen koti', 176.00, 150.00, 4, 'sininen, vihreä ja valkoinen', NULL, 'S', 'alpakanvilla', NULL);
INSERT INTO tuote VALUES (45, 'villapontso Haltija valkea', 180.00, 160.00, 4, 'valkoinen, keltainen ja vaaleanvihreä', NULL, 'M', 'alpakanvilla', NULL); -- '150-170cm'
INSERT INTO tuote VALUES (46, 'villapontso Haltija ruska', 180.00, 160.00, 4, 'oranssi, punaruskea ja musta',  NULL, 'M', 'alpakanvilla', NULL);
INSERT INTO tuote VALUES (47, 'villapontso Haltija boreal', 180.00, 160.00, 4, 'neonväri ja tummansininen',  NULL, 'M', 'alpakanvilla', NULL);
INSERT INTO tuote VALUES (48, 'villapontso Haltija koti', 180.00, 160.00, 4, 'sininen, vihreä ja valkoinen',  NULL, 'M', 'alpakanvilla', NULL);
INSERT INTO tuote VALUES (49, 'villapontso Jättiläinen valkea', 200.00, 170.00, 4, 'valkoinen, keltainen ja vaaleanvihreä', NULL, 'L', 'alpakanvilla', NULL); -- '180-200cm'
INSERT INTO tuote VALUES (50, 'villapontso Jättiläinen ruska', 200.00, 170.00, 4, 'oranssi, punaruskea ja musta', NULL, 'L', 'alpakanvilla', NULL);
INSERT INTO tuote VALUES (51, 'villapontso Jättiläinen boreal', 200.00, 170.00, 4, 'neonväri ja tummansininen', NULL, 'L', 'alpakanvilla', NULL);
INSERT INTO tuote VALUES (52, 'villapontso Jättiläinen koti', 200.00, 170.00, 4, 'valkoinen, keltainen ja vaaleanvihreä', NULL, 'L', 'alpakanvilla', NULL);
INSERT INTO tuote VALUES (53, 'villapaita Maahinen mesi', 220.00, 200.00, 4, 'valkoinen, vaaleanvihreä ja vaaleansininen', NULL, 'S', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (54, 'villapaita Maahinen hiutale', 220.00, 200.00, 4, 'valkoinen, harmaa ja vaaleansininen', NULL, 'S', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (55, 'villapaita Maahinen pihka', 220.00, 200.00, 4, 'keltainen, oranssi ja punainen', NULL, 'S', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (56, 'villapaita Maahinen terva', 220.00, 200.00, 4, 'ruskea ja musta', NULL, 'S', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (57, 'villapaita Haltija mesi', 240.00, 220.00, 4, 'valkoinen, vaaleanvihreä ja vaaleanvihreä', NULL, 'M', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (58, 'villapaita Haltija hiutale', 240.00, 220.00, 4, 'valkoinen, harmaa ja vaaleansininen', NULL, 'M', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (59, 'villapaita Haltija pihka', 240.00, 220.00, 4, 'keltainen, oranssi ja punainen', NULL, 'M', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (60, 'villapaita Haltija terva', 240.00, 220.00, 4, 'ruskea ja musta', NULL, 'M', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (61, 'villapaita Jättiläinen mesi', 260.00, 240.00, 4, 'valkoinen, vaaleanvihreä ja vaaleanvihreä', NULL, 'L', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (62, 'villapaita Jättiläinen hiutale', 260.00, 240.00, 4, 'valkoinen, harmaa ja vaaleansininen', NULL, 'L', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (63, 'villapaita Jättiläinen pihka', 260.00, 240.00, 4, 'keltainen, oranssi ja punainen', NULL, 'L', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (64, 'villapaita Jättiläinen terva', 260.00, 240.00, 4, 'ruskea ja musta', NULL, 'L', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (65, 'lapaset Käpälä vaaka', 60.00, 40.00, 4, 'valkoinen ja musta', NULL, 'S', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (66, 'lapaset Käpälä räiske', 60.00, 40.00, 4, 'monivärinen', NULL, 'S', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (67, 'lapaset Käpälä tuli', 60.00, 40.00, 4, 'keltainen, punainen ja musta', NULL, 'S', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (68, 'lapaset Tassu vaaka', 60.00, 40.00, 4, 'valkoinen ja musta', NULL, 'M', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (69, 'lapaset Tassu räiske', 60.00, 40.00, 4, 'monivärinen', NULL, 'M', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (70, 'lapaset Tassu tuli', 60.00, 40.00, 4, 'keltainen, punainen ja musta', NULL, 'M', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (71, 'lapaset Räpylä vaaka', 60.00, 40.00, 4, 'valkoinen ja musta', NULL, 'L', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (72, 'lapaset Räpylä räiske', 60.00, 40.00, 4, 'monivärinen', NULL, 'L', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (73, 'lapaset Räpylä tuli', 60.00, 40.00, 4, 'keltainen, punainen ja musta', NULL, 'L', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (74, 'eläinpontso S', 150.00, 120.00, 4, 'musta ja valkoinen', NULL, 'S', 'lampaanvilla', NULL); -- pienin koko myös kissoille muuten vain koirille
INSERT INTO tuote VALUES (75, 'eläinpontso M', 160.00, 125.00, 4, 'musta ja valkoinen', NULL, 'M', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (76, 'eläinpontso L', 170.00, 130.00, 4, 'musta ja valkoinen', NULL, 'L', 'lampaanvilla', NULL);
INSERT INTO tuote VALUES (77, 'huovutuskurssi', 150.00, 700.00, 5, NULL, '5x', NULL, NULL, '1kk'); -- max. määrä osallistujia kerralle on 15 henk.
INSERT INTO tuote VALUES (78, 'keritsemiskurssi', 150.00, 700.00, 5, NULL, '5x', NULL, NULL, '1kk'); 
INSERT INTO tuote VALUES (79, 'eläimen käsittely ja hoito -kurssi', 150.00, 700.00, 5, NULL, '5x', NULL, NULL, '1kk'); 
INSERT INTO tuote VALUES (80, 'ratsastusterapia', 70.00, 100.00, 5, NULL, '1x', NULL, NULL, '4h'); -- harjaus, maassa käsittely, lyhyt ratsastunti  
INSERT INTO tuote VALUES (81, 'kummitoimintaterapia (agility yms.)', 30.00, 700.00, 5, NULL, '1x', NULL, NULL, '4h'); 
INSERT INTO tuote VALUES (82, 'mixed bag', 60.00, 20.00, 5, NULL, '1x', NULL, NULL, '6h'); -- erilaisten eläinten kanssa toimintaa (agility jne.), eli voi vaihdella muiden osallistujien kanssa eläinparia
INSERT INTO tuote VALUES (83, 'ponin/hevosen talutus', 30.00, 5.00, 5, NULL, '1x', NULL, NULL, '4h'); 
INSERT INTO tuote VALUES (84, 'lukemista eläimen kanssa', 20.00, 5.00, 5, NULL, '1x', NULL, NULL, '4h'); 
INSERT INTO tuote VALUES (85, 'kesäleiri lapselle', 120.00, 700.00, 5, NULL, '1x', NULL, NULL, '2vk'); 
INSERT INTO tuote VALUES (86, 'päivälippu', 10.00, 5.00, 6, NULL, '1x', NULL, NULL, '12h');
INSERT INTO tuote VALUES (87, '2vk lippu', 20.00, 10.00, 6, NULL, '14x', NULL, NULL, '2vk');
INSERT INTO tuote VALUES (88, '1kk lippu', 30.00, 10.00, 6, NULL, '30x', NULL, NULL, '1kk');
INSERT INTO tuote VALUES (89, '3kk lippu', 80.00, 30.00, 6, NULL, '90x', NULL, NULL, '3kk');
-- INSERT INTO tuote VALUES ();