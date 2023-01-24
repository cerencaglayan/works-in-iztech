from flask import Flask, json, jsonify
app = Flask(__name__)

@app.route('/') 
def hello_world():
    response = jsonify('Hello world!')
    response.status_code = 200
    return response

def start():
    if __name__ == "__main__":
        app.run(debug=True)

start()
