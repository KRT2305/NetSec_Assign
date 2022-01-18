from bottle import * 
import os

#to add css and other static files
@route('/<filename:path>')
def send_static(filename):
    return static_file(filename, root="static/")

#encoding function
def encipher(plaintext):
    cipher=""
    for ch in plaintext:
        flag = False
        if ch.isupper():
            flag=True
            ch = ch.lower()
        key = chr(ord('a')+25 - (ord(ch) - ord('a'))) #implements the encryption logic
        if flag:
            key = str(key).upper()
        cipher+=key
    return cipher

#decoding function
def decipher(cipher):
    plaintext=""
    for ch in cipher:
        flag = False
        if ch.isupper():
            ch = ch.lower()
            flag = True
        key = chr(ord('a') + 25 - (ord(ch) - ord('a'))) #implements the decryption logic
        if flag:
            key = str(key).upper()
        plaintext+=key
    return plaintext

#to host the landing page
@route("/")
def home():
    return template('home_temp')

#points to the encipher decipher page
@route("/enc-dec")
def enc_dec_page():
    return template('enc-dec', plaintext="", cipher="")

#handles the encipher request
@route("/encipher", method='POST')
def get_cipher():
    plaintext = request.forms.get('plaintext')
    return template('enc-dec', plaintext = plaintext, cipher=encipher(plaintext))

#handles the decipher request
@route("/decipher", method = 'POST')
def get_plaintext():
    cipher = request.forms.get('cipher')
    return template('enc-dec', plaintext = decipher(cipher), cipher=cipher)



if os.environ.get('APP_LOCATION') == 'heroku':
    run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
else:
    run(host='localhost', port=8080, debug=True)