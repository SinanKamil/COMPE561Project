CREATE TABLE  category  (
  id  int NOT NULL AUTO_INCREMENT,
  name  varchar(50) NOT NULL,
  description  varchar(200),
  created_at  timestamp,
  PRIMARY KEY (id)
);

INSERT into category (name, description,created_at) values ('computer', '',NOW( ) )
INSERT into category (name, description,created_at) values ('Ipads/Tablets', '',NOW() )
INSERT into category (name, description,created_at) values ('tablet', '',NOW() )
INSERT into category (name, description,created_at) values ('headset', '',NOW() )
INSERT into category (name, description,created_at) values ('charger', '',NOW() )
INSERT into category (name, description,created_at) values ('speaker', '',NOW() )
INSERT into category (name, description,created_at) values ('keaboard', '',NOW() )
INSERT into category (name, description,created_at) values ('mouse', '',NOW() )
INSERT into category (name, description,created_at) values ('case', '',NOW() )
INSERT into category (name, description,created_at) values ('laptop', '',NOW() )
select * FROM category 

delete from category WHERE id = 4
UPDATE category set name = 'ipad' where id = 2
ALTER TABLE category AUTO_INCREMENT = 1;


CREATE TABLE  product  (
  id  int NOT NULL AUTO_INCREMENT,
  name  varchar(50) NOT NULL,
  price  decimal(18,2),
  description  varchar(200),
  image blob,
  stock  int,
  created_at  timestamp,
  category_id  int,
  PRIMARY KEY (id),
  FOREIGN KEY (category_id) REFERENCES category(id)
);
INSERT into product  (name, price, description,image, stock, created_at) values ('MacBook Pro', 1499.99, 'Apple 13.3 MacBook Pro with Retina Display,Silver 2020',LOAD_FILE('d:\\flower.gif'), 8, NOW() )

INSERT INTO pictures VALUES(1, LOAD_FILE('d:\\flower.gif'));
select * FROM product  


CREATE TABLE  user_role  (
   id  int  NOT NULL AUTO_INCREMENT,
   name  varchar(10),
   PRIMARY KEY (id)
);
INSERT INTO user_role (name) values ('admin')
INSERT INTO user_role (name) values ('customer')
select * FROM user_role 


CREATE TABLE  users  (
  id  int NOT NULL AUTO_INCREMENT,
  firstname  varchar(50) NOT NULL,
  lastname  varchar(50) NOT NULL,
  email  varchar(200),
  password  varchar(100),
  address  varchar(200),
  city  varchar(50),
  State  varchar(50),
  zipcode  int,
  country  varchar(50),
  phone  varchar(20),
  created_at  timestamp,
  user_role_id  int,
  PRIMARY KEY (id),
  FOREIGN KEY (user_role_id) REFERENCES user_role(id)
);	
INSERT into users (firstname,lastname,email,password,address,city,State,zipcode,country,phone,created_at,user_role_id)
values ('Shakiba','Abdul Sattar','sabdulsattar9429@sdsu.edu','123453','4321 adams Ave', 'San Diego','california','92125','USA','619-2345467',NOW(), 1)
INSERT into users (firstname,lastname,email,password,address,city,State,zipcode,country,phone,created_at,user_role_id)values ('Muntaha','Abdul Sattar','muntahasattar@gmail.com','124453','4521 adams Ave', 'San Diego','california','92125','USA','619-7315467',NOW(), 2)
select * FROM users

CREATE TABLE  orders  (
  id  int NOT NULL AUTO_INCREMENT,
  amount  decimal(18,2),
  shiping_address  varchar(255),
  city  varchar(50),
  state  varchar(50),
  zipcode  int,
  country  varchar(50),
  phone  varchar(20),
  shiping_date  timestamp,
  shiping_status  varchar(255),
  created_at  timestamp,
  users_id  int,
  PRIMARY KEY (id),
  FOREIGN KEY (users_id) REFERENCES users(id)
  
);

CREATE TABLE  order_details  (
  id int NOT NULL AUTO_INCREMENT,
  price  decimal(18,2),
  quantity  int,
  order_id  int,
  product_id int,
  PRIMARY KEY (id),
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (product_id) REFERENCES product(id)
 );

