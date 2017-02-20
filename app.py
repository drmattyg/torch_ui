from flask import Flask, url_for
from flask_socketio import SocketIO
import os

app = Flask(__name__)
app.static_folder = os.path.join(os.path.curdir, 'static')


@app.route('/')
def root():
    return app.send_static_file('index.html')


@app.route('/<path:path>')
def static_proxy(path):
    return app.send_static_file(path)


app.config['SECRET_KEY'] = 'Round Midnight'
socketio = SocketIO(app)

if __name__ == '__main__':
    socketio.run(app)
