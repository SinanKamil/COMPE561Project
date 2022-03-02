from flask import render_template
from flask import Flask
app = Flask(__name__)


@app.route('/')
def index():
    # call html pages r
    return render_template('index.html')

# computers page
@app.route("/computers")
def computers_page():
    return render_template('computers.html')


#Phones page
@app.route("/phones")
def phones_page():
    return render_template('phones.html')
    #return "<h1>phones  adress</h1>"

#ipad & tablets me page
@app.route("/ipads")
def Ipads_page():
    return render_template('ipads.html')

#Accessories me page
@app.route("/accessories")
def accessories_page():
    return render_template('accessories.html')

# contact me page
#@app.route("/contact")
#def contact_page():
   # return render_template('contact.html')



