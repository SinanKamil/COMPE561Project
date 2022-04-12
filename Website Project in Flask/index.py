import flask
from flask import request, jsonify, make_response, render_template
from flask import Flask
from flask_mysqldb import MySQL, MySQLdb
app = Flask(__name__)




# Required

app.config['MYSQL_HOST'] = 'localhost'
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = "Hidayat1234"
app.config["MYSQL_DB"] = "e-Shop"

mysql = MySQL(app)

@app.route('/' , methods=['GET', 'POST'])
def index():
    # crate cursor and connection to database
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    # call this query when called
    cur.execute("SELECT * from product")
    # give the data by calling it
    rv = cur.fetchall()
    #return str(rv);
    
    # store all the data in this array
    products = []
    # every single element comes from the database
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']) }
       products.append(content)
       content = {}
       #return jsonify(products)
    return render_template('index.html', products = products)


@app.route('/sample' , methods=['GET', 'POST'])
def index1():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * from user_role")
    rv = cur.fetchall()
    # return str(rv);
    user_role = []
    content = {}
    
    for result in rv:
    #    return str(result)
       content = {'id': result['id'], 'name': result['name'] }
       user_role.append(content)
       content = {}
    return jsonify(user_role)
    # return render_template('index1.html')

@app.route('/sample1' , methods=['GET', 'POST'])
def index2():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * from users")
    rv = cur.fetchall()
    # return str(rv);
    users = []
    content = {}
    
    for result in rv:
    #    return str(result)
       content = {'id': result['id'], 'name': result['name'] }
       users.append(content)
       content = {}
    return jsonify(users)
    return render_template('index1.html')


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
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * from product where category_id = 2 OR category_id = 4 order by id desc")
    rv = cur.fetchall()
    # return str(rv)
    products = []
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']), 'stock': result['stock'] }
       products.append(content)
       content = {}
    # return jsonify(products)
    return render_template('ipads.html', products = products )

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
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * from product where category_id = 6 order by id desc")
    rv = cur.fetchall()
    # return str(rv)
    products = []
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']), 'stock': result['stock'] }
       products.append(content)
       content = {}
    # return jsonify(products)
    return render_template('/accessories-pages/charger.html', products = products )
    

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

