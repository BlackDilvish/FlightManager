CREATE TABLE uzytkownik_aplikacji (
	uzytkownik_aplikacji_id SERIAL,
	login varchar NOT NULL,
	haslo varchar NOT NULL,
	saldo integer NOT NULL,
	is_admin boolean NOT NULL,
	CONSTRAINT uzytkownik_aplikacji_pk PRIMARY KEY(uzytkownik_aplikacji_id)
);

CREATE TABLE pasazer (
	pasazer_id SERIAL,
	uzytkownik_aplikacji_id integer NOT NULL,
	imie varchar NOT NULL,
	nazwisko varchar NOT NULL,
	wiek integer NOT NULL,
	CONSTRAINT pasazer_pk PRIMARY KEY(pasazer_id),
	CONSTRAINT użytkownik_aplikacji_fk FOREIGN KEY(uzytkownik_aplikacji_id) REFERENCES uzytkownik_aplikacji(uzytkownik_aplikacji_id)
);

CREATE TABLE steward (
	steward_id SERIAL,
	imie varchar NOT NULL,
	nazwisko varchar NOT NULL,
	wiek integer NOT NULL,
	CONSTRAINT steward_pk PRIMARY KEY(steward_id)
);

CREATE TABLE pilot (
	pilot_id SERIAL,
	imie varchar NOT NULL,
	nazwisko varchar NOT NULL,
	wiek integer NOT NULL,
	kategoria_uprawnien char NOT NULL,
	CONSTRAINT pilot_pk PRIMARY KEY(pilot_id)
);

CREATE TABLE lotnisko (
	lotnisko_id SERIAL,
	nazwa varchar NOT NULL,
	kraj varchar NOT NULL,
	CONSTRAINT lotnisko_pk PRIMARY KEY(lotnisko_id)
);

CREATE TABLE obsluga_lotniska (
	obsluga_lotniska_id SERIAL,
	lotnisko_id integer NOT NULL,
	imie varchar NOT NULL,
	nazwisko varchar NOT NULL,
	wiek integer NOT NULL,
	funkcja varchar NOT NULL,
	CONSTRAINT obsluga_lotniska_pk PRIMARY KEY(obsluga_lotniska_id),
	CONSTRAINT lotnisko_fk FOREIGN KEY(lotnisko_id) REFERENCES lotnisko(lotnisko_id)
);

CREATE TABLE samolot (
	samolot_id SERIAL,
	model varchar NOT NULL,
	rok_produkcji DATE NOT NULL,
	kraj_produkcji varchar NOT NULL,
	CONSTRAINT samolot_pk PRIMARY KEY(samolot_id)
);

CREATE TABLE lot (
	lot_id SERIAL,
	lotnisko_start_id integer NOT NULL,
	lotnisko_koniec_id integer NOT NULL,
	pilot1_id integer NOT NULL,
	pilot2_id integer NOT NULL,
	samolot_id integer NOT NULL,
	czas_odlotu DATE NOT NULL,
	czas_przylotu DATE NOT NULL,
	koszt integer NOT NULL,
	CONSTRAINT lot_pk PRIMARY KEY(lot_id),
	CONSTRAINT lotnisko_start_fk FOREIGN KEY(lotnisko_start_id) REFERENCES lotnisko(lotnisko_id),
	CONSTRAINT lotnisko_koniec_fk FOREIGN KEY(lotnisko_koniec_id) REFERENCES lotnisko(lotnisko_id),
	CONSTRAINT pilot1_fk FOREIGN KEY(pilot1_id) REFERENCES pilot(pilot_id),
	CONSTRAINT pilot2_fk FOREIGN KEY(pilot2_id) REFERENCES pilot(pilot_id),
	CONSTRAINT samolot_fk FOREIGN KEY(samolot_id) REFERENCES samolot(samolot_id)
);

CREATE TABLE pasazer_w_locie(
	pasazer_w_locie_id SERIAL,
	lot_id INTEGER NOT NULL,
	pasazer_id INTEGER NOT NULL,
	CONSTRAINT pasazer_w_locie_pk PRIMARY KEY(pasazer_w_locie_id),
	CONSTRAINT pasazer_w_locie_lot_fk FOREIGN KEY(lot_id) REFERENCES lot(lot_id),
	CONSTRAINT pasazer_w_locie_pasazer_fk FOREIGN KEY(pasazer_id) REFERENCES pasazer(pasazer_id)
);

CREATE TABLE steward_w_locie(
	lot_id INTEGER NOT NULL,
	steward_id INTEGER NOT NULL,
	CONSTRAINT steward_w_locie_pk PRIMARY KEY(lot_id, steward_id),
	CONSTRAINT steward_w_locie_lot_fk FOREIGN KEY(lot_id) REFERENCES lot(lot_id),
	CONSTRAINT steward_w_locie_steward_fk FOREIGN KEY(steward_id) REFERENCES steward(steward_id)
);

CREATE TABLE bagaz (
	bagaz_id SERIAL,
	pasazer_w_locie_id integer NOT NULL,
	waga integer NOT NULL,
	CONSTRAINT bagaz_pk PRIMARY KEY(bagaz_id),
	CONSTRAINT pasazer_w_locie_fk FOREIGN KEY(pasazer_w_locie_id) REFERENCES pasazer_w_locie(pasazer_w_locie_id)
);

CREATE TABLE przedmiot (
	przedmiot_id SERIAL,
	bagaz_id integer NOT NULL,
	waga integer NOT NULL,
	nazwa varchar NOT NULL,
	CONSTRAINT przedmiot_pk PRIMARY KEY(przedmiot_id),
	CONSTRAINT bagaz_fk FOREIGN KEY(bagaz_id) REFERENCES bagaz(bagaz_id)
);
