from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return '<h1>Testing Application Version:4</h1>'

app.run(host='0.0.0.0', port=8000)
