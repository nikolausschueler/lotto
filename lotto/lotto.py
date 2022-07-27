#!/usr/bin/env python3

from flask import Flask, render_template
import random as ra

app = Flask(__name__)

@app.route('/')
def lotto():
    numbers = sorted(ra.sample(range(1, 50), 6))
    return render_template('lotto.html', numbers=numbers)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=10770)
