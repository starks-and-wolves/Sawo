from flask import Flask,render_template,request
from sawo import createTemplate,verifyToken
import sys
import json

app = Flask(__name__)
# createTemplate("templates/partials",flask=True) #using flask = True genrates flask template

load = ''
loaded = 0


def setPayload(payload):
    global load
    load = payload
  
def setLoaded(reset=False):
    global loaded
    if reset:
        loaded=0
    else:
        loaded+=1



@app.route("/sawoform")
def index():
    setLoaded()
    setPayload(load if loaded<2 else '')
    sawo = {
        "auth_key":"597ee27f-ee0c-4187-a6bc-33fd9e8ff586",
        "to":"login",
        "identifier":"phone_number_sms"
    }
    return render_template("index.html",sawo=sawo, load=load)

@app.route("/login",methods=["POST","GET"])
def login():
    payload = json.loads(request.data)["payload"]
    setLoaded(True)
    setPayload(payload)
    status = 200 if(verifyToken(payload)) else 404
    return {"status" : status}

@app.route("/")
def login1():
    return render_template("login.html")

if __name__ =='__main__':
    app.run()