from flask import Flask, render_template, url_for, flash, redirect
from flask_sqlalchemy import  SQLAlchemy
from forms import RegisterationForm, LoginForm
from models import User, Post


app = Flask(__name__)
app.config['SECRET_KEY'] = 'ce9673c867e5b6fdf0eed4472de6ca0f'
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///site.db'
db = SQLAlchemy(app)


posts = [
    {
        'author': 'Gus Gus',
        'title': 'Blog Post 1',
        'content': 'First post content',
        'date_posted': 'May 12, 2019'
    },
    {
        'author': 'Polly Polly',
        'title': 'Blog Post 2',
        'content': 'Second post content',
        'date_posted': 'May 12, 2019'
    }
]


@app.route('/')
@app.route('/home')
def home():
    return render_template('index.html', posts=posts)


@app.route('/about')
def about():
    return render_template('about.html', title="About")


@app.route('/register', methods = ['GET', 'POST'])
def register():
    form = RegisterationForm()

    if form.validate_on_submit():
        flash(f'Account created for {form.username.data}!', 'success')
        return redirect(url_for('home'))

    return render_template('register.html', title = 'Register', form = form)


@app.route('/login', methods = ['GET', 'POST'])
def login():
    form = LoginForm()

    if form.validate_on_submit():
        if form.email.data == 'admin@blog.com' and form.password.data == 'password':
            flash('You have been logged in!', 'success')
            return redirect(url_for('home'))
        else:
            flash('Login unsuccessful. Please check username and password', 'danger')

    return render_template('login.html', title = 'Login', form = form)


if __name__ == '__main__':
    app.run(debug=True)