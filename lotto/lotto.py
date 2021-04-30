#!/usr/bin/env python3

from flask import Flask
import random as ra

app = Flask(__name__)

@app.route('/')
def lotto():
    return str(sorted(ra.sample(range(1, 50), 6)))

if __name__ == '__main__':
    app.run(host='0.0.0.0')
