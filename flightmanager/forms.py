from flask_wtf import FlaskForm
from wtforms import (
    StringField,
    SubmitField,
    BooleanField,
    IntegerField,
    DateField,
)
from wtforms.validators import DataRequired, Length

class UzytkownikAplikacji(FlaskForm):
    login = StringField("Login", validators=[DataRequired()])
    haslo = StringField("Hasło", validators=[DataRequired()])
    saldo = IntegerField("Saldo", validators=[DataRequired()])
    admin = BooleanField("Admin", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Pasazer(FlaskForm):
    uzytkownik_aplikacji_id = IntegerField("Użytkownik aplikacji ID", validators=[DataRequired()])
    imie = StringField("Imię", validators=[DataRequired()])
    nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    wiek = IntegerField("Wiek", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Steward(FlaskForm):
    imie = StringField("Imię", validators=[DataRequired()])
    nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    wiek = IntegerField("Wiek", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Pilot(FlaskForm):
    imie = StringField("Imię", validators=[DataRequired()])
    nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    wiek = IntegerField("Wiek", validators=[DataRequired()])
    kategoria_uprawnien = StringField("Kategoria uprawnień", validators=[DataRequired(), Length(max=1)])
    submit = SubmitField("Dodaj")

class Lotnisko(FlaskForm):
    nazwa = StringField("Nazwa", validators=[DataRequired()])
    kraj = StringField("Kraj", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class ObslugaLotniska(FlaskForm):
    lotnisko_id = IntegerField("Lotnisko ID", validators=[DataRequired()])
    imie = StringField("Imię", validators=[DataRequired()])
    nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    wiek = IntegerField("Wiek", validators=[DataRequired()])
    funkcja = StringField("Funkcja", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Samolot(FlaskForm):
    model = StringField("Model", validators=[DataRequired()])
    rok_produkcji = DateField("Rok produkcji", validators=[DataRequired()])
    kraj_produkcji = StringField("Kraj produkcji", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Lot(FlaskForm):
    lotnisko_start_id = IntegerField("Lotnisko start ID", validators=[DataRequired()])
    lotnisko_koniec_id = IntegerField("Lotnisko koniec ID", validators=[DataRequired()])
    pilot1_id = IntegerField("Pilot 1 ID", validators=[DataRequired()])
    pilot2_id = IntegerField("Pilot 2 ID", validators=[DataRequired()])
    samolot_id = IntegerField("Samolot ID", validators=[DataRequired()])
    czas_odlotu = DateField("Czas odlotu", validators=[DataRequired()])
    czas_przylotu = DateField("Czas przylotu", validators=[DataRequired()])
    koszt = IntegerField("Koszt", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class PasazerWLocie(FlaskForm):
    lot_id = IntegerField("Lot ID", validators=[DataRequired()])
    pasazer_id = IntegerField("Pasażer ID", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class StewardWLocie(FlaskForm):
    lot_id = IntegerField("Lot ID", validators=[DataRequired()])
    steward_id = IntegerField("Pasażer ID", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Bagaz(FlaskForm):
    pasazer_w_locie_id = IntegerField("Pasażer w locie ID", validators=[DataRequired()])
    waga = IntegerField("Waga", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Przedmiot(FlaskForm):
    bagaz_id = IntegerField("Bagaż ID", validators=[DataRequired()])
    waga = IntegerField("Waga", validators=[DataRequired()])
    nazwa = StringField("Nazwa", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Login(FlaskForm):
    login = StringField("Login", validators=[DataRequired()])
    haslo = StringField("Hasło", validators=[DataRequired()])
    submit = SubmitField("Zaloguj się")

class Delete(FlaskForm):
    del_id = IntegerField("ID", validators=[DataRequired()])
    submit = SubmitField("Usuń rekord")