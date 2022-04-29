from flask import Flask, jsonify, redirect, url_for, render_template, request, session
from flask_mysqldb import MySQL, MySQLdb
app = Flask(__name__)
app.secret_key = "hello"



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
    # return str(rv);
    
    # store all the data in this array
    products = []
    # every single element comes from the database
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']) }
       products.append(content)
       content = {}
    #    return jsonify(products)
    return render_template('index.html')


# computers page
@app.route("/computers")
def computers_page():
    return render_template('computers.html')


#Phones page
@app.route("/phones")
def phones_page():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * from product where category_id = 13 order by id desc")
    rv = cur.fetchall()
    # return str(rv)
    products = []
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']), 'stock': result['stock'] }
       products.append(content)
       content = {}
    # return jsonify(products)
    return render_template('phones.html', products = products )
        

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
@app.route("/userlogin", methods=["POST", "GET"])
def userlogin_page():
    if request.method == "POST":
        session.permanent = True
        user = request.form["username"]
        session["user"] = user
        print(user)
        return render_template("index.html")
    
    else:
        if "user" in session:
            return render_template("index.html")
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
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * from product where category_id = 3 order by id desc")
    rv = cur.fetchall()
    # return str(rv)
    products = []
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']), 'stock': result['stock'] }
       products.append(content)
       content = {}
    # return jsonify(products)
    return render_template('/accessories-pages/gaming.html', products = products )
    

# headsets page in accessories-page
@app.route("/accessories/headsets")
def headsets():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * from product where category_id = 5 order by id desc")
    rv = cur.fetchall()
    # return str(rv)
    products = []
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']), 'stock': result['stock'] }
       products.append(content)
       content = {}
    # return jsonify(products)
    return render_template('/accessories-pages/headsets.html', products = products )
    
    

# mics/speakers page in accessories-page
@app.route("/accessories/mics/speakers")
def speakers():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * from product where category_id = 7 order by id desc")
    rv = cur.fetchall()
    # return str(rv)
    products = []
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']), 'stock': result['stock'] }
       products.append(content)
       content = {}
    # return jsonify(products)
    return render_template('/accessories-pages/speakers.html', products = products )
    

# phone/ipads cases page in accessories-page
@app.route("/accessories/phone/ipads cases")
def cases():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * from product where category_id = 10 order by id desc")
    rv = cur.fetchall()
    # return str(rv)
    products = []
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']), 'stock': result['stock'] }
       products.append(content)
       content = {}
    # return jsonify(products)
    return render_template('/accessories-pages/cases.html', products = products )
    

# keyboard/mouse page in accessories-page
@app.route("/accessories/keyboard/mouse")
def keyboard():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * from product where category_id = 8 OR category_id = 9 order by id desc")
    rv = cur.fetchall()
    # return str(rv)
    products = []
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']), 'stock': result['stock'] }
       products.append(content)
       content = {}
    # return jsonify(products)
    return render_template('/accessories-pages/keyboard.html', products = products )
    
@app.route('/category/<int:cateogry_id>', methods = ['GET'])
def get_category_by_id(cateogry_id):
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    if (cateogry_id == 8 or cateogry_id == 9):
        cur.execute("SELECT name, description from category where id = 8 or id = 9 order by id desc")
    elif (cateogry_id == 2 or cateogry_id == 4):
        cur.execute("SELECT name, description from category where id = 2 or id = 4 order by id desc") 
    else :
        cur.execute("SELECT name, description from category where id = '%s' order by id desc" % str(cateogry_id))
    rv = cur.fetchall()
    category = []
    content = {}
    
    for result in rv:
       content = {'name': result['name'], 'description': result['description'] }
       category.append(content)
       content = {}
       
    if (cateogry_id == 8 or cateogry_id == 9):
        cur.execute("SELECT * from product where category_id = 8 or category_id = 9 order by id desc")
    elif (cateogry_id == 2 or cateogry_id == 4):
        cur.execute("SELECT * from product where category_id = 2 or category_id = 4 order by id desc")
    else :
        cur.execute("SELECT * from product where category_id = '%s' order by id desc" % str(cateogry_id))
    
    rv = cur.fetchall()
    products = []
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']), 'stock': result['stock'] }
       products.append(content)
       content = {}
    
    return jsonify(category, products)





@app.route('/search/<data>', methods = ['GET'])
def search_product(data):
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    likeString = "%" + str(data) + "%"
    cur.execute("SELECT * FROM category WHERE name LIKE '%s'order by id desc" % likeString)
    rv = cur.fetchall()
    category = []
    content = {}
    
    for result in rv:
       content = {'name': result['name'], 'description': result['description'] }
       category.append(content)
       content = {}
       
    cur.execute("SELECT * FROM product WHERE name LIKE '%s'order by id desc" % likeString)
    rv = cur.fetchall()
    products = []
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']), 'stock': result['stock'] }
       products.append(content)
       content = {}
    return jsonify(category, products)

@app.route("/login", methods=["POST", "GET"])
def login():
    if request.method == "POST":
        session.permanent = True
        username = request.form["username"]
        session["surname"] = username
        return render_template("index.html")
    else:
        if "user" in session:
            return render_template("index.html")

        return render_template("login.html")
    
    
@app.route("/logout")
def logout():
    session.pop("user", None)
    return redirect(url_for("userlogin_page"))