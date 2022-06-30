from flask import Flask, render_template, redirect, request
from config.mysqlconnection import connectToMySQL

app = Flask(__name__)

@app.route("/")
def home():
    query = 'SELECT quote FROM quotes'
    results = connectToMySQL().query_db(query)
    quotes = []
    for quote in results:
        quotes.append(quote["quote"])

    return render_template("index.html",quotes=quotes)

@app.route("/process", methods=['POST'])
def process():
    data = {"quote": request.form['quote']}
    print(data['quote'])
    query = "INSERT INTO quotes (quote) VALUES (%(quote)s);"
    connectToMySQL().query_db(query,data)
    return redirect("/")

if __name__ == "__main__":
    app.run(debug=True)