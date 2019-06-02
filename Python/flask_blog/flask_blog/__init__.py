from flask import Flask
from flask_sqlalchemy import  SQLAlchemy


app = Flask(__name__)
app.config['SECRET_KEY'] = 'ce9673c867e5b6fdf0eed4472de6ca0f'
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///site.db'
db = SQLAlchemy(app)

from flask_blog import routes

