from flask import Flask
import os


# Initiate Flask application
app = Flask(__name__)

@app.route('/')
def home():
    user_name = os.getenv("USER_NAME")
    return f"<h1>Hey, {user_name}!</h1>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001)