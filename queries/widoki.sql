create view Dane_pasazerow as select p.imie, p.nazwisko, p.wiek, czas_odlotu, l1.nazwa as "Miejsce odlotu", l1.kraj as "Kraj odlotu", czas_przylotu, 
l2.nazwa as "Miejsce przylotu", l2.kraj as "Kraj przylotu", koszt, b.waga 
from lot, pasazer p, pasazer_w_locie, lotnisko l1, lotnisko l2, bagaz b 
where lot.lot_id=pasazer_w_locie.lot_id and pasazer_w_locie.pasazer_id=p.pasazer_id and l1.lotnisko_id=lotnisko_start_id and l2.lotnisko_id=lotnisko_koniec_id
and b.pasazer_w_locie_id=pasazer_w_locie.pasazer_w_locie_id;

create view Dane_lotu as select (select count(*) from lot, pasazer_w_locie where lot.lot_id=pasazer_w_locie.lot_id and lot.lot_id=lm.lot_id) as liczba_pasazerow, 
(select count(*) from lot, steward_w_locie where lot.lot_id=steward_w_locie.lot_id and lot.lot_id=lm.lot_id) as liczba_stewardow, 
czas_odlotu, l1.nazwa as "Miejsce odlotu", l1.kraj as "Kraj odlotu", czas_przylotu, 
l2.nazwa as "Miejsce przylotu", l2.kraj as "Kraj przylotu", koszt, p1.nazwisko as "Nazwisko pierwszego pilota", p2.nazwisko as "Nazwisko drugiego pilota", model 
from lot lm left join pasazer_w_locie on lm.lot_id=pasazer_w_locie.lot_id, lotnisko l1, lotnisko l2, pilot p1, pilot p2, samolot 
where l1.lotnisko_id=lotnisko_start_id and l2.lotnisko_id=lotnisko_koniec_id and p1.pilot_id=pilot1_id and p2.pilot_id=pilot2_id and lm.samolot_id=samolot.samolot_id
group by lm.lot_id, l1.nazwa, l1.kraj, l2.nazwa, l2.kraj, p1.nazwisko, p2.nazwisko, model
order by lm.lot_id;

create view Osoby_wydaly_ponad_200 as select SUM(koszt), COUNT(koszt), p.imie, p.nazwisko from lot left join pasazer_w_locie on lot.lot_id=pasazer_w_locie.lot_id, 
pasazer p where p.pasazer_id=pasazer_w_locie.pasazer_id group by p.imie, p.nazwisko having SUM(koszt) >= 200;