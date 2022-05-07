
from ast import Delete
from unicodedata import category
from flask import Flask, jsonify, redirect, url_for, render_template, request, session
from flask_mysqldb import MySQL, MySQLdb
# import pymysql
# from werkzeug import generate_password_hash, check_password_hash
app = Flask(__name__)
app.secret_key = "hello"


# Required
app.config['MYSQL_HOST'] = 'localhost'
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = "Hidayat1234"
app.config["MYSQL_DB"] = "e-Shop"

mysql = MySQL(app)

# home-page
@app.route('/' , methods=['GET', 'POST'])
def index():
    
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * from category order by id desc")
    
    rv = cur.fetchall()
    #return str(rv)
    categories = []
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'] }
       categories.append(content)
       content = {}
    # return jsonify(products)
  
    return render_template('index.html', categories = categories )
    


# computers page
@app.route("/computers")
def computers_page():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("SELECT * from product where category_id = 1 order by id desc")
    rv = cur.fetchall()
    # return str(rv)
    products = []
    content = {}
    
    for result in rv:
       content = {'id': result['id'], 'name': result['name'], 'description': result['description'], 'image_location': result['image_location'], 'price': float(result['price']), 'stock': result['stock'] }
       products.append(content)
       content = {}
    # return jsonify(products)
    return render_template('computers.html', products = products)



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
    


# contact me page
@app.route("/contact")
def contact_page():
    return render_template('contact.html')



# userlogin page
@app.route("/userlogin", methods=["POST", "GET"])
def userlogin_page():
    if request.method == "POST":
        session.permanent = True
        email = request.form["email"]
        password = request.form["password"]
        
        # check in database
        cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cur.execute("""SELECT email, user_role_id from users where email = %s and password = %s""", (email, password))
        rv = cur.fetchall()
        content = {}
        errMessage = ''
    
        if len(rv) == 0:
            errMessage = 'password or email does not match'
            return render_template('userlogin.html', errMessage = errMessage)
        
        
        result = rv[0]
        content = {'email': result['email'], 'user_role': result['user_role_id'] }
        
        if result:
            session["user"] = email
            session["role"] = 'normal'
            if content['user_role'] == 1:
                session["role"] = 'admin'
            return redirect("/") 
            
        else:
            # return erro to login
            print('passworsd or email is wrong')
            return render_template('usersignup.html')
            # return "wrong password or email"
            
    else:
        if "user" in session:
            return redirect("/") 
        return render_template('userlogin.html')



# user sign up page
@app.route("/usersignup", methods=["POST", "GET"])
def usersignup_page():
    #action
    if request.method == "POST":
        session.permanent = True
        firstName = request.form["firstName"]
        lastName = request.form["lastName"]
        email = request.form["email"]
        password = request.form["password"]

        # register to the database
        cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cur.execute("""insert into users (firstname, lastname, email,password) values (%s,%s,%s,%s); """ , (firstName, lastName, email, password))
        mysql.connection.commit()

        # make sure the entered user is existing 
        session["user"] = email
        return render_template("index.html") 
    else:
        # calling // signup
        if "user" in session:
            return render_template("index.html")
        return render_template('usersignup.html')
 
 
 #add category for Admin  
@app.route("/addcategory", methods=["POST", "GET"])
def addcategory_page():
    #action
    if request.method == "POST":
        name = request.form["name"]
        description = request.form["description"]
        

        # register to the database
        cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cur.execute("""insert into category (name, description) values (%s,%s); """ , (name, description))
        mysql.connection.commit()

        # make sure the entered user is existing 
    
        return render_template("index.html") 
    else:
        # calling // signup
        if "user" in session:
            return render_template("addcategory.html")
        return render_template('login.html') 
    
     
 # delete category for admin
@app.route("/deletecategory/<int:id>")
def deletecategory(id):
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("DELETE FROM category WHERE  id= %s", [id])
    mysql.connection.commit()
    return redirect("/") 


 
    
    #add product for Admin  
@app.route("/addproduct", methods=["POST", "GET"])
def addproduct_page():
    #action
    if request.method == "POST":
        name = request.form["name"]
        price = request.form["price"]
        description = request.form["description"]
        

        # register to the database
        cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cur.execute("""insert into product (name, price, description) values (%s,%s, %s); """ , (name, price, description))
        mysql.connection.commit()

        # make sure the entered user is existing 
    
        return render_template("index.html") 
    else:
        # calling // signup
        if "user" in session:
            return render_template("addproduct.html")
        return render_template('login.html') 
    
    
    # delete ipads  for admin
@app.route("/deleteipads/<int:id>")
def deleteipads(id):
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("DELETE FROM product WHERE  id= %s", [id])
    mysql.connection.commit()
    return redirect("/ipads") 


# delete computer  for admin
# @app.route("/deletecomputers/<int:id>")
# def deletecomputers(id):
#     cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
#     cur.execute("DELETE FROM product WHERE  id= %s", [id])
#     mysql.connection.commit()
#     return redirect("/computers") 

# delete Phone  for admin
@app.route("/deletecomputers/<int:id>")
def deletecomputers(id):
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute("DELETE FROM product WHERE  id= %s", [id])
    mysql.connection.commit()
    return redirect("/computers") 
    
    
    
      
    
    #delete product for Admin  
@app.route("/deleteproduct", methods=["POST", "GET"])
def deleteproduct_page():
    #action
    if request.method == "POST":
        name = request.form["name"]
        # price = request.form["price"]
        # description = request.form["description"]
        

        # register to the database
        cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cur.execute("""DELETE FROM product WHERE  name = %s """, [name] )
        mysql.connection.commit()

        # make sure the entered user is existing 
    
        return render_template("index.html") 
    else:
        # calling // signup
        if "user" in session:
            return render_template("index.html")
        return render_template('login.html') 
  
  
  
  # logout page  
@app.route("/logout")
def logout():
    session.pop("user", None)
    session.pop("role", None)
    return redirect(url_for("userlogin_page"))











     
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





@app.route('/add', methods=['POST'])
def add_product_to_cart():
 try:
  _quantity = int(request.form['quantity'])
  id = request.form['id']
  # validate the received values
  if _quantity and id and request.method == 'POST':
   conn = mysql.connect()
   cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
   cur.execute("SELECT * FROM product WHERE id=%s", id)
   row = cur.fetchall()
    
   itemArray = { row['code'] : {'name' : row['name'], 'code' : row['code'], 'quantity' : _quantity, 'price' : row['price'], 'image' : row['image'], 'total_price': _quantity * row['price']}}
    
   all_total_price = 0
   all_total_quantity = 0
    
   session.modified = True
   if 'cart_item' in session:
    if row['code'] in session['cart_item']:
     for key, value in session['cart_item'].items():
      if row['code'] == key:
       old_quantity = session['cart_item'][key]['quantity']
       total_quantity = old_quantity + _quantity
       session['cart_item'][key]['quantity'] = total_quantity
       session['cart_item'][key]['total_price'] = total_quantity * row['price']
    else:
     session['cart_item'] = array_merge(session['cart_item'], itemArray)
 
    for key, value in session['cart_item'].items():
     individual_quantity = int(session['cart_item'][key]['quantity'])
     individual_price = float(session['cart_item'][key]['total_price'])
     all_total_quantity = all_total_quantity + individual_quantity
     all_total_price = all_total_price + individual_price
   else:
    session['cart_item'] = itemArray
    all_total_quantity = all_total_quantity + _quantity
    all_total_price = all_total_price + _quantity * row['price']
    
   session['all_total_quantity'] = all_total_quantity
   session['all_total_price'] = all_total_price
    
   return redirect(url_for('.products'))
  else:
   return 'Error while adding item to cart'
 except Exception as e:
  print(e)
 finally:
  cursor.close() 
  conn.close()
   
@app.route('/')
def products():
 try:
  conn = mysql.connect()
  cursor = conn.cursor(pymysql.cursors.DictCursor)
  cursor.execute("SELECT * FROM product")
  rows = cursor.fetchall()
  return render_template('products.html', products=rows)
 except Exception as e:
  print(e)
 finally:
  cursor.close() 
  conn.close()
 
@app.route('/empty')
def empty_cart():
 try:
  session.clear()
  return redirect(url_for('.products'))
 except Exception as e:
  print(e)
 
@app.route('/delete/<string:code>')
def delete_product(code):
 try:
  all_total_price = 0
  all_total_quantity = 0
  session.modified = True
   
  for item in session['cart_item'].items():
   if item[0] == code:    
    session['cart_item'].pop(item[0], None)
    if 'cart_item' in session:
     for key, value in session['cart_item'].items():
      individual_quantity = int(session['cart_item'][key]['quantity'])
      individual_price = float(session['cart_item'][key]['total_price'])
      all_total_quantity = all_total_quantity + individual_quantity
      all_total_price = all_total_price + individual_price
    break
   
  if all_total_quantity == 0:
   session.clear()
  else:
   session['all_total_quantity'] = all_total_quantity
   session['all_total_price'] = all_total_price
   
  return redirect(url_for('.products'))
 except Exception as e:
  print(e)
   
def array_merge( first_array , second_array ):
 if isinstance( first_array , list ) and isinstance( second_array , list ):
  return first_array + second_array
 elif isinstance( first_array , dict ) and isinstance( second_array , dict ):
  return dict( list( first_array.items() ) + list( second_array.items() ) )
 elif isinstance( first_array , set ) and isinstance( second_array , set ):
  return first_array.union( second_array )
 return False


    
    
