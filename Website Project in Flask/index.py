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
@app.route("/contact")
def contact_page():
    return render_template('contact.html')


# accessories elements


# charger page in accessorires-page
@app.route("/accessories/chargers")
def charger():
    return render_template('/accessories-pages/charger.html')

# gaming page in accessories-page
@app.route("/accessories/gaming")
def gaming():
    return render_template('/accessories-pages/gaming.html')

# headsets page in accessories-page
@app.route("/accessories/headsets")
def headsets():
    return render_template('/accessories-pages/headsets.html')

# mics/speakers page in accessories-page
@app.route("/accessories/mics/speakers")
def speakers():
    return render_template('/accessories-pages/speakers.html')

# phone/ipads cases page in accessories-page
@app.route("/accessories/phone/ipads cases")
def cases():
    return render_template('/accessories-pages/cases.html')

