from flask import Flask, render_template, request, jsonify
from pusher import Pusher
import json

# Create flask app
app = Flask(__name__)


# Configure pusher object
pusher = Pusher(
    app_id='800517',
    key='1df5ca3ace1ba9f32921',
    secret='d7f2ee404cdf92dadcee',
    cluster='us3',
    ssl=True
)


# Index route, shows index.html view
@app.route("/")
def index():
    return render_template("index.html")


# Endpoint for storing todo item
@app.route("/add-todo", methods = ["POST"])
def add_todo():
    data = json.loads(request.data) # Load JSON data from request
    pusher.trigger("todo", "item-added", data) # Trigger item-added event on the todo channel
    return jsonify(data)


# Endpoint for deleting todo item
@app.route("/remove-todo/<item_id>")
def remove_todo(item_id):
    data = {"id": item_id}
    pusher.trigger("todo", "item-removed", data)
    return jsonify(data)


# Endpoint for updating todo item
@app.route("/update-todo/<item_id>", methods = ["POST"])
def update_todo(item_id):
    data = {
        "id": item_id,
        "completed": json.loads(request.data).get("completed", 0)
    }

    pusher.trigger("todo", "item-updated", data)
    return jsonify(data)


# Run Flask app in debug mode
app.run(debug=True)