from flask import Flask, render_template, redirect

app = Flask(__name__)

@app.route("/")
def home():
    quotes = ["to be or not to be","winning isn't everything","quote the raven, nevermore"]
    return render_template("index.html",quotes)

@app.route("/process")
def process():
    return redirect("/")

if __name__ == "__main__":
    app.run(debug=True)