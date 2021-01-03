INSERT INTO uzytkownik_aplikacji (login, haslo, saldo, is_admin) VALUES ('samolociarz', 'samolot', 100, false);
INSERT INTO uzytkownik_aplikacji (login, haslo, saldo, is_admin) VALUES ('mirek6', 'mirek6', 500, false);
INSERT INTO uzytkownik_aplikacji (login, haslo, saldo, is_admin) VALUES ('szef', 'admin123', 1000, true);

INSERT INTO pasazer (uzytkownik_aplikacji_id, imie, nazwisko, wiek) VALUES (1, 'Mariusz', 'Nowak', 34);
INSERT INTO pasazer (uzytkownik_aplikacji_id, imie, nazwisko, wiek) VALUES (1, 'Michal', 'Kowalski', 54);
INSERT INTO pasazer (uzytkownik_aplikacji_id, imie, nazwisko, wiek) VALUES (2, 'Miroslaw', 'Nowacki', 23);
INSERT INTO pasazer (uzytkownik_aplikacji_id, imie, nazwisko, wiek) VALUES (2, 'Arkadiusz', 'Kowal', 65);
INSERT INTO pasazer (uzytkownik_aplikacji_id, imie, nazwisko, wiek) VALUES (2, 'Bartlomiej', 'Okon', 33);
INSERT INTO pasazer (uzytkownik_aplikacji_id, imie, nazwisko, wiek) VALUES (2, 'Konstancja', 'Driesner', 24);

INSERT INTO steward (imie, nazwisko, wiek) VALUES ('Anna', 'Nowacka', 21);
INSERT INTO steward (imie, nazwisko, wiek) VALUES ('Waldemar', 'Piatek', 32);
INSERT INTO steward (imie, nazwisko, wiek) VALUES ('Magdalena', 'Nowak', 22);
INSERT INTO steward (imie, nazwisko, wiek) VALUES ('Eugeniusz', 'Irys', 24);
INSERT INTO steward (imie, nazwisko, wiek) VALUES ('Laura', 'Kowalska', 20);

INSERT INTO pilot (imie, nazwisko, wiek, kategoria_uprawnien) VALUES ('Boleslaw', 'Kowal', 44, 'A');
INSERT INTO pilot (imie, nazwisko, wiek, kategoria_uprawnien) VALUES ('Kazimiesz', 'Organ', 52, 'B');
INSERT INTO pilot (imie, nazwisko, wiek, kategoria_uprawnien) VALUES ('Grzegorz', 'Walczak', 32, 'A');
INSERT INTO pilot (imie, nazwisko, wiek, kategoria_uprawnien) VALUES ('Michalina', 'Ojrzynska', 27, 'C');

INSERT INTO lotnisko (nazwa, kraj) VALUES ('Pyrzowice', 'Polska');
INSERT INTO lotnisko (nazwa, kraj) VALUES ('Krakow', 'Polska');
INSERT INTO lotnisko (nazwa, kraj) VALUES ('Warszawa', 'Polska');
INSERT INTO lotnisko (nazwa, kraj) VALUES ('Gdansk', 'Polska');
INSERT INTO lotnisko (nazwa, kraj) VALUES ('Berlin', 'Niemcy');

INSERT INTO obsluga_lotniska (lotnisko_id, imie, nazwisko, wiek, funkcja) VALUES (1, 'Bartlomiej', 'Nowacki', 44, 'Ochroniarz');
INSERT INTO obsluga_lotniska (lotnisko_id, imie, nazwisko, wiek, funkcja) VALUES (1, 'Mariusz', 'Okon', 54, 'Ochroniarz');
INSERT INTO obsluga_lotniska (lotnisko_id, imie, nazwisko, wiek, funkcja) VALUES (1, 'Michal', 'Aniol', 33, 'Kierowca');
INSERT INTO obsluga_lotniska (lotnisko_id, imie, nazwisko, wiek, funkcja) VALUES (2, 'Arkadiusz', 'Rzepa', 21, 'Ochroniarz');
INSERT INTO obsluga_lotniska (lotnisko_id, imie, nazwisko, wiek, funkcja) VALUES (2, 'Laura', 'Mak', 43, 'Kierowca');
INSERT INTO obsluga_lotniska (lotnisko_id, imie, nazwisko, wiek, funkcja) VALUES (3, 'Michal', 'Lewandowski', 65, 'Ochroniarz');
INSERT INTO obsluga_lotniska (lotnisko_id, imie, nazwisko, wiek, funkcja) VALUES (3, 'Bartosz', 'Sroda', 32, 'Kierowca');
INSERT INTO obsluga_lotniska (lotnisko_id, imie, nazwisko, wiek, funkcja) VALUES (4, 'Maciej', 'Rybak', 22, 'Ochroniarz');
INSERT INTO obsluga_lotniska (lotnisko_id, imie, nazwisko, wiek, funkcja) VALUES (5, 'Wojciech', 'Fabianski', 46, 'Kierowca');

INSERT INTO samolot (model, rok_produkcji, kraj_produkcji) VALUES ('Boeing 737', '1999-06-03', 'USA');
INSERT INTO samolot (model, rok_produkcji, kraj_produkcji) VALUES ('Embraer 175', '2012-08-01', 'Brazylia');
INSERT INTO samolot (model, rok_produkcji, kraj_produkcji) VALUES ('Tupolew Tu-104', '2002-08-01', 'Rosja');
INSERT INTO samolot (model, rok_produkcji, kraj_produkcji) VALUES ('Airbus A321', '2012-03-03', 'USA');

INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (1, 2, 1, 2, 1, '2020-12-21 05:05:06', '2020-12-21 14:16:00', 100);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (3, 1, 2, 3, 2, '2020-12-23 06:05:06', '2020-12-24 12:16:00', 90);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (1, 2, 4, 2, 3, '2021-01-02 16:03:00', '2021-01-02 18:19:00', 100);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (2, 3, 1, 4, 4, '2021-01-06 15:15:06', '2021-01-06 21:18:00', 85);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (4, 2, 3, 2, 1, '2020-03-21 07:05:00', '2021-03-21 14:16:00', 100);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (3, 4, 3, 2, 2, '2020-04-21 07:05:06', '2020-04-21 14:16:00', 100);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (2, 3, 1, 4, 4, '2021-01-06 15:15:06', '2021-01-06 21:18:00', 85);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (4, 2, 3, 2, 1, '2020-01-21 07:05:00', '2021-01-21 14:16:00', 100);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (3, 4, 3, 2, 2, '2020-04-22 07:05:06', '2020-04-22 14:16:00', 100);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (2, 3, 1, 4, 4, '2021-01-08 15:15:06', '2021-01-08 21:18:00', 85);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (4, 2, 3, 2, 1, '2020-03-29 07:05:00', '2021-03-29 14:16:00', 100);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (3, 4, 3, 2, 2, '2020-04-20 07:05:06', '2020-04-20 14:16:00', 100);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (2, 3, 1, 4, 4, '2021-01-16 15:15:06', '2021-01-16 21:18:00', 85);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (4, 2, 3, 2, 1, '2020-03-11 07:05:00', '2021-03-11 14:16:00', 100);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (3, 4, 3, 2, 2, '2020-04-11 07:05:06', '2020-04-11 14:16:00', 100);
INSERT INTO lot (lotnisko_start_id, lotnisko_koniec_id, pilot1_id, pilot2_id, samolot_id, czas_odlotu, czas_przylotu, koszt)
		   VALUES (4, 3, 1, 3, 4, '2020-04-13 07:05:06', '2020-04-13 14:17:00', 120);

INSERT INTO pasazer_w_locie (lot_id, pasazer_id) VALUES (1, 2);
INSERT INTO pasazer_w_locie (lot_id, pasazer_id) VALUES (1, 1);
INSERT INTO pasazer_w_locie (lot_id, pasazer_id) VALUES (1, 3);
INSERT INTO pasazer_w_locie (lot_id, pasazer_id) VALUES (2, 4);
INSERT INTO pasazer_w_locie (lot_id, pasazer_id) VALUES (2, 1);
INSERT INTO pasazer_w_locie (lot_id, pasazer_id) VALUES (2, 5);
INSERT INTO pasazer_w_locie (lot_id, pasazer_id) VALUES (2, 2);
INSERT INTO pasazer_w_locie (lot_id, pasazer_id) VALUES (3, 2);
INSERT INTO pasazer_w_locie (lot_id, pasazer_id) VALUES (3, 1);
INSERT INTO pasazer_w_locie (lot_id, pasazer_id) VALUES (3, 3);

INSERT INTO steward_w_locie (lot_id, steward_id) VALUES (1, 1);
INSERT INTO steward_w_locie (lot_id, steward_id) VALUES (1, 2);
INSERT INTO steward_w_locie (lot_id, steward_id) VALUES (1, 3);
INSERT INTO steward_w_locie (lot_id, steward_id) VALUES (2, 1);
INSERT INTO steward_w_locie (lot_id, steward_id) VALUES (2, 3);
INSERT INTO steward_w_locie (lot_id, steward_id) VALUES (2, 4);
INSERT INTO steward_w_locie (lot_id, steward_id) VALUES (2, 5);
INSERT INTO steward_w_locie (lot_id, steward_id) VALUES (3, 1);
INSERT INTO steward_w_locie (lot_id, steward_id) VALUES (3, 2);
INSERT INTO steward_w_locie (lot_id, steward_id) VALUES (3, 3);
INSERT INTO steward_w_locie (lot_id, steward_id) VALUES (3, 4);

INSERT INTO bagaz (pasazer_w_locie_id, waga) VALUES (1, 3);
INSERT INTO bagaz (pasazer_w_locie_id, waga) VALUES (2, 2);
INSERT INTO bagaz (pasazer_w_locie_id, waga) VALUES (4, 2);
INSERT INTO bagaz (pasazer_w_locie_id, waga) VALUES (5, 5);
INSERT INTO bagaz (pasazer_w_locie_id, waga) VALUES (6, 4);
INSERT INTO bagaz (pasazer_w_locie_id, waga) VALUES (7, 2);
INSERT INTO bagaz (pasazer_w_locie_id, waga) VALUES (8, 1);

INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (1, 1, 'Woda mineralna');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (1, 2, 'Gitara');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (3, 2, 'Miecz swietlny');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (4, 4, 'Ubrania');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (4, 1, 'Laptop');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (5, 4, 'Komputer');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (2, 2, 'Cola');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (6, 2, 'Pamiatki');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (7, 1, 'Woda mineralna');