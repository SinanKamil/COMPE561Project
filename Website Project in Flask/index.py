from flask import render_template
from flask import Flask, jsonify
from flask_mysqldb import MySQL

app = Flask(__name__)

# Required

app.config['MYSQL_HOST'] = 'localhost'
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ""
app.config["MYSQL_DB"] = "e-Shop"

mysql = MySQL(app)

@app.route('/')
def index():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM product")
    rv = cur.fetchall()
   # return str(rv);
    category = []
    content = {}
    
    for result in rv:
        print(result)
        content = {'name': result['name']}
        category.append(content)
        content = {}
    # call html pages r
    return jsonify(category)
    #return render_template('index.html')


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

# userlogin page
@app.route("/userlogin")
def userlogin_page():
    return render_template('userlogin.html')

# user sign up page
@app.route("/usersignup")
def usersignup_page():
    return render_template('usersignup.html')


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

# keyboard/mouse page in accessories-page
@app.route("/accessories/keyboard/mouse")
def keyboard():
    return render_template('/accessories-pages/keyboard.html')

