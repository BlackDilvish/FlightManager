from flask import render_template, url_for, redirect, request, session, flash
from flightmanager import app, forms
from flightmanager import functions as fun

def get_forms():
	return {
		'uzytkownik_aplikacji': forms.UzytkownikAplikacji(),
		'pasazer': forms.Pasazer(),
		'steward': forms.Steward(),
		'pilot': forms.Pilot(),
		'lotnisko': forms.Lotnisko(),
		'obsluga_lotniska': forms.ObslugaLotniska(),
		'samolot': forms.Samolot(),
		'lot': forms.Lot(),
		'pasazer_w_locie': forms.PasazerWLocie(),
		'steward_w_locie': forms.StewardWLocie(),
		'bagaz': forms.Bagaz(),
		'przedmiot': forms.Przedmiot(),
		'delete': forms.Delete()
	}

def get_views():
	return {
		'Dane_pasazerow': ['Imie', 'Nazwisko', 'Wiek', 'Czas odlotu', 'Miejsce odlotu', 'Kraj odlotu',
							'Czas przylotu', 'Miejsce przylotu', 'Kraj przylotu', 'Koszt lotu', 'Waga bagazu'],
		'Dane_lotu': ['Liczba pasazerow', 'Liczba stewardow', 'Czas odlotu', 'Miejsce odlotu', 'Kraj odlotu',
						'Czas przylotu', 'Miejsce przylotu', 'Kraj przylotu', 'Koszt lotu', 'Nazwisko pierwszego pilota',
						'Nazwisko drugiego pilota', 'Model samolotu'],
		'Osoby_wydaly_ponad_200': ['Suma wydana na bilety', 'Liczba lotow', 'Imie', 'Nazwisko']
	}

@app.route("/")
def home():
	return render_template("home.html", session=session)

@app.route("/login", methods=["GET", "POST"])
def login():
	form = forms.Login()
	if form.is_submitted():
		if fun.login(form):
			session["user"] = form.login.data
			return redirect("/")
		else:
			flash("Niepoprawne dane logowania")

	return render_template("login.html", session=session, form=form)

@app.route("/logout")
def logout():
	session.pop("user", None)
	return render_template("logout.html", session=session)

@app.route("/insert/<table>", methods=["GET", "POST"])
def insert(table):
	form = get_forms()[table]

	if form.is_submitted():
		fun.insert(table, form)
		return redirect(f"/raport/{table}")
	return render_template("insert.html", table=table, form=form)

@app.route("/delete/<table>", methods=["GET", "POST"])
def delete(table):
	form = get_forms()['delete']

	if form.is_submitted():
		fun.delete(table, form.del_id.data)
		return redirect(f"/raport/{table}")

	admin = False
	if 'user' in session and fun.is_admin(session["user"]):
		admin = True

	return render_template("delete.html", table=table, form=form, admin=admin)

@app.route("/raport/<table>")
def raport(table):
	form = get_forms()[table]
	return render_template("raport.html", table=table, form=form, records=fun.select(table))

@app.route("/widok/<view>")
def widok(view):
	headers = get_views()[view]
	return render_template("widok.html", view=view, headers=headers, records=fun.get_view(view))