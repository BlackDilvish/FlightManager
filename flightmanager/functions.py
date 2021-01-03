import psycopg2
from flask import flash

def getConnection():
    return psycopg2.connect(user = "sjzgsdhq",
								  password = "OxdPFB5JdOZz-dLM5xDEnkcU8chlEtV-",
								  host = "raja.db.elephantsql.com",
								  port = "5432",
								  database = "sjzgsdhq")

def select(table, args="*"):
    connection = getConnection()
    cursor = connection.cursor()

    query = f"SELECT {args} from {table}"
    cursor.execute(query)
    records = cursor.fetchall()
    connection.commit()
    connection.close()
    return records

def insert(table, form):
    connection = getConnection()
    cursor = connection.cursor()

    args, values = "", ""
    for index, field in enumerate(form):
        if field.data not in ["", None] and field.name not in ["csrf_token", "submit"]:
            sep = ", " if index is not 0 else ""
            args += sep + field.name
            values += f"{sep}'{str(field.data)}'"

    query = f"INSERT INTO {table} ({args}) VALUES ({values})"

    try:
        cursor.execute(query)
    except Exception as err:
        flash("Wystapil blad w probie dodania elementu do bazy danych: " + err.pgerror)
    finally:
        connection.commit()
        connection.close()

def delete(table, id):
    connection = getConnection()
    cursor = connection.cursor()

    query = f"DELETE FROM {table} WHERE {table}_id={id}"

    try:
        cursor.execute(query)
    except Exception as err:
        flash("Wystapil blad w probie usuniecia elementu z bazy danych: " + err.pgerror)
    finally:
        connection.commit()
        connection.close()

def login(form):
    connection = getConnection()
    cursor = connection.cursor()

    query = f"SELECT * from uzytkownik_aplikacji where login='{form.login.data}' and haslo='{form.haslo.data}'"
    cursor.execute(query)
    record = cursor.fetchall()
    return record

def is_admin(username):
    connection = getConnection()
    cursor = connection.cursor()

    query = f"SELECT is_admin from uzytkownik_aplikacji where login='{username}'"
    cursor.execute(query)
    records = cursor.fetchall()
    return records[0][0]

def get_view(view):
    connection = getConnection()
    cursor = connection.cursor()

    query = f"SELECT * from {view}"
    cursor.execute(query)
    record = cursor.fetchall()
    return record
