from flask import Flask, render_template, url_for

app = Flask(__name__)

posts = [
    {
        "author": "Gus Gus",
        "title": "Blog Post 1",
        "content": "First post content",
        "date_posted": "May 12, 2019"
    },
    {
        "author": "Polly Polly",
        "title": "Blog Post 2",
        "content": "Second post content",
        "date_posted": "May 12, 2019"
    }
]

@app.route("/")
@app.route("/home")
def home():
    return render_template("index.html", posts=posts)

@app.route("/about")
def about():
    return render_template("about.html", title="About")



if __name__ == "__main__":
    app.run(debug=True)