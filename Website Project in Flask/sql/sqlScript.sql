CREATE TABLE  category  (
  id  int NOT NULL AUTO_INCREMENT,
  name  varchar(50) NOT NULL,
  description  varchar(200),
  created_at  timestamp,
  PRIMARY KEY (id)
);
INSERT into category (name, description,created_at) values ('computer', '',NOW( ) )
INSERT into category (name, description,created_at) values ('ipads', '',NOW() )
INSERT into category (name, description,created_at) values ('tablet', '',NOW() )
INSERT into category (name, description,created_at) values ('headset', '',NOW() )
INSERT into category (name, description,created_at) values ('charger', '',NOW() )
INSERT into category (name, description,created_at) values ('speaker', '',NOW() )
INSERT into category (name, description,created_at) values ('keaboard', '',NOW() )
INSERT into category (name, description,created_at) values ('mouse', '',NOW() )
INSERT into category (name, description,created_at) values ('case', '',NOW() )
INSERT into category (name, description,created_at) values ('laptop', '',NOW() )
INSERT into category (name, description,created_at) values ('chromBook', '',NOW( ) )
INSERT into category (name, description,created_at) values ('phone', '',NOW( ) )

SELECT * FROM  category c 
SELECT * from category order by id desc
ALTER TABLE category ADD COLUMN image_location VARCHAR(),
ALTER TABLE category
  ADD image_location varchar(250)
  
ALTER TABLE category
DROP COLUMN last_name;
  
Update category 
	SET name = 'ipad'
	where name = 'Ipads/Tablets'

delete from category WHERE id = 12
UPDATE category set image_location = 'static/images/index9.jpg' where image_location  ='static/images/index7.jpeg'
ALTER TABLE category AUTO_INCREMENT = 1;

sele
INSERT into category (name, description, created_at) values ('testPhone', '',NOW( ) )


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

INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('MacBook Pro', 1499.99, 'Apple 13.3 MacBook Pro with Retina Display,Silver 2020',LOAD_FILE('/static/images/cases.jpg'), '/static/images/cases.jpg',8, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Apple ipad', 699.99, 'Apple iPad Mini 6th Generation-Tablet-64 GB',LOAD_FILE('/static/images/ipad1.jpeg'), '/static/images/ipad1.jpeg',20, NOW(), 2 )
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Apple iPad Pro', 299.00, 'Apple iPad Pro 9.7 128Gb Silver Refurbished',LOAD_FILE('/static/images/ipad2.jpg'), '/static/images/ipad2.jpg',15, NOW(), 2 )
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Apple iPad Air', 499.99, 'Apple iPad Air 64GB In Space Gray',LOAD_FILE('/static/images/ipad3.jpg'), '/static/images/ipad3.jpg',20, NOW(), 2 )
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Apple iPad', 269.99, '2021 Apple iPad Mini (Wi-Fi, 64GB)Purple',LOAD_FILE('/static/images/ipad4.jpg'), '/static/images/ipad4.jpg',10, NOW(), 2 )
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Android Tablet', 189.99, '2GB RAM, 32GB ROM,Quad Core, HD IPS Screen,Bluetooth',LOAD_FILE('/static/images/ipad5.jpg'), '/static/images/ipad5.jpg',30, NOW(), 4)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Samsung Table', 249.99, 'SM-T817A Galaxy Tab  9.7 inches AT&T Wifi 4G',LOAD_FILE('/static/images/ipad6.jpg'), '/static/images/ipad6.jpg',35, NOW(), 4)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('GTA Vice City', 10.59, 'Grand Theft Auto: Vice City Steam Key GLOBAL',LOAD_FILE('/static/images/game1.jpg'), '/static/images/game1.jpg',40, NOW(), 3)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Pokémon Legends: Arceus', 59.59, 'Pokémon Legends: Arceus - Nintendo Switch',LOAD_FILE('/static/images/game.jpg'), '/static/images/game.jpg',30, NOW(), 3)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Halo Infinite', 29.99, 'The Art of Halo Infinite Hardcover-December 2021',LOAD_FILE('/static/images/game3.jpg'), '/static/images/game3.jpg',24, NOW(), 3)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('W2K22 Game', 69.99, 'WWE 2K22 Standard Edition-PlayStation 5',LOAD_FILE('/static/images/game4.jpg'), '/static/images/game4.jpg',29, NOW(), 3)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('play Station', 289.99, 'Sony PlayStation 4 500GB Console GameStop',LOAD_FILE('/static/images/game5.jpg'), '/static/images/game5.jpg',27, NOW(), 3)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('play Staion', 39.99, 'OIVO PS5 Stand with Suction Cooling Fan&Dual Charger',LOAD_FILE('/static/images/game6.jpg'), '/static/images/game6.jpg',24, NOW(), 3)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('iPad 10.2 Case', 29.99, 'SUPCASE Unicorn Beetle Pro Series Case with Screen Protector for iPad',LOAD_FILE('/static/images/case1.jpg'), '/static/images/case1.jpg',27, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Ipad air &pro case', 33.90, 'auaua Case for iPad with Pencil Holder  screen protecorfor ipad',LOAD_FILE('/static/images/case2.jpg'), '/static/images/case2.jpg',31, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('case for table', 19.99, 'Fintie Hybrid Slim Case for Samsung Galaxy Pen Holder',LOAD_FILE('/static/images/case3.jpg'), '/static/images/case3.jpg',35, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('iphone XR Case', 19.98, 'Cordking iPhone XR Case, Silicone Ultra Slim Shockproof Phone Case',LOAD_FILE('/static/images/case4.jpg'), '/static/images/case4.jpg',39, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('iphone 13 Case', 29.99, 'TAURI Defender Designed for iPhone 13 with 2 Pack Glass Screen&Camera',LOAD_FILE('/static/images/case5.jpg'), '/static/images/case5.jpg',36, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Galaxy A12 Case',19.99, 'Samsung Galaxy A12 Case with 2 Pack Screen Protector',LOAD_FILE('/static/images/case6.jpg'), '/static/images/case6.jpg',32, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('SONY Headset',32.00, 'SONY Over Ear Best Stereo Extra Bass Portable Headphones for iPhone Samsung mp3 Player',LOAD_FILE('/static/images/headsets.jpeg'), '/static/images/headsets.jpeg',30, NOW(), 5)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Philips Headset',39.99, 'Philips Computer Headset with Microphone',LOAD_FILE('/static/images/headset1.jpg'), '/static/images/headset1.jpg',25, NOW(), 5)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Rltek Handsfree',19.99, 'Sound Isolating Handsfree Headset Earphones Earbuds',LOAD_FILE('/static/images/headset2.jpg'), '/static/images/headset2.jpg',26, NOW(), 5)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('COMISO Earbud',52.99, 'Wireless,Bluetooth Earbuds,with Microphone,Charging Case',LOAD_FILE('/static/images/headset3.jpg'), '/static/images/headset3.jpg',20, NOW(), 5)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Apple AirPods Pro',249.95, 'Active noise cancellation for immersive sound hearing',LOAD_FILE('/static/images/headset4.jpg'), '/static/images/headset4.jpg',26, NOW(), 5)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Bone Headphones',73.99, 'Bone Conduction Headphones Bluetooth, Wireless MP3 Player',LOAD_FILE('/static/images/headset5.jpg'), '/static/images/headset5.jpg',29, NOW(), 5)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Keyboard&Mouse',24.15, 'Basics Wired Computer Keyboard and Wired Mouse, 10-Pack',LOAD_FILE('/static/images/keyboard1.jpg'), '/static/images/keyboard1.jpg',30, NOW(), 8)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('IPad Keyboard',39.99, 'iPad Pro Case with Keyboard for  Air 5th/4th Gen, Pencil Holder',LOAD_FILE('/static/images/keyboard2.jpg'), '/static/images/keyboard2.jpg',30, NOW(), 8)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Foldable Keyboard',56.64,'Foldable Bluetooth Wireless Keyboard,for PC,phone,Tablet&Laptop',LOAD_FILE('/static/images/keyboard3.jpg'), '/static/images/keyboard3.jpg',40, NOW(), 8)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Laser Keyboard',26.99,'Virtual Wireless Laser Keyboard Mouse Bluetooth Mobile Phone,Tablet',LOAD_FILE('/static/images/keyboard4.jpg'), '/static/images/keyboard4.jpg',30, NOW(), 8)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Ipad Keyboard',36.99,'Bluetooth Keyboard and Mouse Combo,Wireless',LOAD_FILE('/static/images/keyboard5.jpg'), '/static/images/keyboard5.jpg',28, NOW(), 8)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Bluetooth Mouse',19.59,'Bluetooth Mouse and Mouse Pad Wireless Mouse for Computer',LOAD_FILE('/static/images/mouse.jpg'), '/static/images/mouse.jpg',25, NOW(), 9)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('iPhone Charger',29.99,'iPhone Fast, Stuffcool 20W USB C Power Delivery Wall Charger for iPhone,iPad',LOAD_FILE('/static/images/charger1.jpg'), '/static/images/charger1.jpg',28, NOW(), 6)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Cluvox Charger',29.94,'Cluvox Fast USB C Wall Charger with Foldable Plug for iPhones',LOAD_FILE('/static/images/charger2.jpg'), '/static/images/charger2.jpg',28, NOW(), 6)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Anker Charger',29.99,'Anker Wireless 313 Charger,Qi-Certified 10W Max for iPhones',LOAD_FILE('/static/images/charger3.jpg'), '/static/images/charger3.jpg',20, NOW(), 6)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Charging boat',20.99,'USB Charging Station Multi Port Chargerfor iPhone iPad Samsung Tablets',LOAD_FILE('/static/images/charger4.jpg'), '/static/images/charger4.jpg',29, NOW(), 6)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Keymox Charger',29.64,'Keymox Portable Charger, USB-C Power Delivery,for iPhone, Samsung, iPad',LOAD_FILE('/static/images/charger5.jpg'), '/static/images/charger5.jpg',29, NOW(), 6)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('sumsung Charger',29.49,'USB C Charger,Spigen 45W Super,for GalaxyS22 Fold 3 Flip',LOAD_FILE('/static/images/charger6.jpg'), '/static/images/charger6.jpg',39, NOW(), 6)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('ION Speaker',69.00,'ION Audio Block Rocker,Bluetooth,100W Battery, Microphone',LOAD_FILE('/static/images/img9.jpeg'), '/static/images/img9.jpeg',49, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('JBL GTO609C Speaker',29.95,'JBL GTO609C Premium 6.5-Inch Speaker',LOAD_FILE('/static/images/img8.jpeg'), '/static/images/img8.jpeg',29, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Lezii Speaker',30.00,'Portable,IP67,FM Radio, Waterproof Speaker',LOAD_FILE('/static/images/speaker1.jpg'), '/static/images/speaker1.jpg',29, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Emeet Luna Speaker',86.95,'Bluetooth,Noise Reduction Algorithm USB Speaker',LOAD_FILE('/static/images/speaker2.jpg'), '/static/images/speaker2.jpg',31, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Sony Speaker',53.95,'XB13 Wireless,Waterproof Bluetooth Speaker',LOAD_FILE('/static/images/speaker3.jpg'), '/static/images/speaker3.jpg',35, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Shidu Speaker',43.99,'Portable,Rechargeable,Wired Microphone Speaker',LOAD_FILE('/static/images/speaker4.jpg'), '/static/images/speaker4.jpg',39, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Ortizan Speaker',40.97,'Portable,30H Playtime, Waterproof Speaker',LOAD_FILE('/static/images/speaker5.jpg'), '/static/images/speaker5.jpg',36, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Dikaou Speaker',45.00,'Torch Atmosphere Bluetooth Speaker',LOAD_FILE('/static/images/speaker6.jpg'), '/static/images/speaker6.jpg',26, NOW(), 7)

INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('Iphone 13 Pro', 1099.99, 'Apple iPhone 13 Pro Max 128 GB In Sierra Blue With Installment',LOAD_FILE('/static/images/phone1.jpg'), '/static/images/phone1.jpg',18, NOW() ,13);
INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('Samsung Galaxy', 999.59, 'Galaxy: Sumsung Certified Pre awoned',LOAD_FILE('/static/images/phone2.jpg'),'/static/images/phone2.jpg',28, NOW(),13 );
INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('Pixel', 899.99, 'Pixel 6 Pro Cloudy White 128GB',LOAD_FILE('/static/images/phone3.jpg'),'/static/images/phone3.jpg',38, NOW() ,13);
INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('Iphone 11',549.99, 'iPhone11 128GB-Unlocked & SIM-Free-RED-Apple',LOAD_FILE('/static/images/phone4.png'),'/static/images/phone4.png',18, NOW(),13 );
INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('Samsung Galaxy',1049.99, 'Samsung Galaxy S22+, 256GB In Pink',LOAD_FILE('/static/images/phone5.png'),'/static/images/phone5.png',28, NOW(),13 );
INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('Pixel',599.99, 'Pixel 6 Kinda Coral 128GB (Unlocked)',LOAD_FILE('/static/images/phone6.jpg'), '/static/images/phone6.jpg',15, NOW(),13 );


INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('MacBook Pro', 1499.99, 'Apple 13.3 MacBook Pro with Retina Display',LOAD_FILE('/static/images/cases.jpg'),'/static/images/cases.jpg',8, NOW() ,1);
INSERT into product  (name, price, description,image, image_location ,stock, created_at,category_id )  values ('Lenovo IdeaPad',647.99,'Core i5 1035G1/1 GHz-Win 10',LOAD_FILE('/static/images/comp2.jpg'), '/static/images/comp2.jpg',18, NOW(),1 );
INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('ASUS Zenbook', 644.99, 'Ryzen 5 5500U, 8GB RAM, 256GB SSD, Windows 10, Light Gray',LOAD_FILE('/static/images/comp3.jpg'),'/static/images/comp3.jpg',8, NOW() ,1);
INSERT into product  (name, price, description,image, image_location ,stock, created_at,category_id )  values ('Acer Chromebook',230.99, 'Touchscreen Laptop, MediaTek MT8183C Core Pilot, 4GB RAM, 32GB HD, Chrome OS, Silver, CP311-3H-K23X ',LOAD_FILE('/static/images/comp4.jpg'), '/static/images/comp4.jpg',8, NOW(),1 );
INSERT into product  (name, price, description,image, image_location ,stock, created_at,category_id )  values ('HP 15.6" FHD Laptop',509.99, 'ntel Core i5-1135G7, 8GB RAM, 256GB SSD, Windows 11 Home, Natural Silver, 15-dy2095wm',LOAD_FILE('/static/images/comp5.jpg'), '/static/images/comp5.jpg',8, NOW(),1 );
INSERT into product  (name, price, description,image, image_location ,stock, created_at,category_id )  values ('Dell Chromebook 11',99.99, 'CB1C13 11.6" Laptop Intel Celeron 2955U 1.40GHz 4GB 16GB SSD ',LOAD_FILE('/static/images/comp6.jpg'),'/static/images/comp6.jpg',8, NOW(),1 );


SELECT * FROM  product p 
DELETE FROM product WHERE id = 52
ALTER TABLE product  AUTO_INCREMENT = 1;
ALTER TABLE product 
ADD COLUMN image_location varchar(200) AFTER image;
Update product 
	SET id = 33
	where id = 34
Update product 
	SET category_id = 11
	where category_id = 10
Update product 
	SET name   = 'Dell Chromebook'

	where name  ='Dell Chromebook 11'

UPDATE  product 
set description  = 'Cluvox Fast-USB-Wall Charger & Foldable Plug'
WHERE  description  = 'Cluvox Fast USB C Wall Charger with Foldable Plug'


Update product 
	SET name  = 'Keyboard-Mouse'
	where name  ='Keyboard&Mouse'
	
Select * from product 

Update product 
	SET category_id  = 2
	where id  = 60

	Select * from category c 

	
CREATE TABLE user_role (
   id int NOT NULL AUTO_INCREMENT,
   name varchar(10),
   PRIMARY KEY (id)
);
INSERT INTO user_role (name) values ('admin')
INSERT INTO user_role (name) values ('customer')
INSERT INTO user_role (name) values ('manager')
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
SELECT * FROM  users 
SELECT id, name FROM category
SELECT id, name FROM category order by name Asc

INSERT into users (firstname,lastname,email,password,address,city,State,zipcode,country,phone,created_at,user_role_id)
values ('Shakiba','Abdul Sattar','sabdulsattar9429@sdsu.edu','123453','4321 adams Ave', 'San Diego','california','92125','USA','619-2345467',NOW(), 1)
INSERT into users (firstname,lastname,email,password,address,city,State,zipcode,country,phone,created_at,user_role_id)values ('Shahad','Al Neesan','shahadd_88@yahoo.com','124456','5621 adams Ave', 'San Diego','california','92126','USA','619-9135467',NOW(), 1)



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

SELECT * from category order by id desc

SELECT * from product where category_id = 8 OR category_id = 9 order by id desc

-- Select * from category where name like %comp%
SELECT * FROM category WHERE name LIKE '%ch%';


SELECT * from product where category_id = 2 OR category_id = 4 order by id desc
SELECT * from product where category_id = 8 OR category_id = 9 order by id desc
SELECT * from product where category_id = 6 order by id desc

SELECT * from product where category_id = 3 order by id desc
SELECT * from product where category_id = 5 order by id desc
SELECT * from product where category_id = 10 order by id desc
select * from product where category_id = 7
SELECT * from product where category_id = 13 order by id desc
SELECT * from product where category_id = 1 order by id desc

CREATE TABLE  users_test  (
  id  int NOT NULL AUTO_INCREMENT,
  name varchar(35),
  email  varchar(35),
  password  varchar(100),
  PRIMARY KEY (id)
);

Select email, user_role_id  from users 
	where email = 'iqrasalam@gmail.com'
	AND password = '123445'

UPDATE users
SET user_role_id = 1
where email = 'iqrasalam@gmail.com'
	AND password = '123445'
	

	
CREATE TABLE  category  (
  id  int NOT NULL AUTO_INCREMENT,
  name  varchar(50) NOT NULL,
  description  varchar(200),
  created_at  timestamp,
  PRIMARY KEY (id)
);
INSERT into category (name, description,created_at) values ('computer', '',NOW( ) )
INSERT into category (name, description,created_at) values ('ipads', '',NOW() )
INSERT into category (name, description,created_at) values ('tablet', '',NOW() )
INSERT into category (name, description,created_at) values ('headset', '',NOW() )
INSERT into category (name, description,created_at) values ('charger', '',NOW() )
INSERT into category (name, description,created_at) values ('speaker', '',NOW() )
INSERT into category (name, description,created_at) values ('keaboard', '',NOW() )
INSERT into category (name, description,created_at) values ('mouse', '',NOW() )
INSERT into category (name, description,created_at) values ('case', '',NOW() )
INSERT into category (name, description,created_at) values ('laptop', '',NOW() )
INSERT into category (name, description,created_at) values ('chromBook', '',NOW( ) )
INSERT into category (name, description,created_at) values ('phone', '',NOW( ) )

SELECT * FROM  category c 
SELECT * from category order by id desc
ALTER TABLE category ADD COLUMN image_location VARCHAR(),
ALTER TABLE category
  ADD image_location varchar(250)
  
ALTER TABLE category
DROP COLUMN last_name;
  
Update category 
	SET name = 'ipad'
	where name = 'Ipads/Tablets'

delete from category WHERE id = 12
UPDATE category set image_location = 'static/images/index9.jpg' where image_location  ='static/images/index7.jpeg'
ALTER TABLE category AUTO_INCREMENT = 1;

sele
INSERT into category (name, description, created_at) values ('testPhone', '',NOW( ) )


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

INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('MacBook Pro', 1499.99, 'Apple 13.3 MacBook Pro with Retina Display,Silver 2020',LOAD_FILE('/static/images/cases.jpg'), '/static/images/cases.jpg',8, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Apple ipad', 699.99, 'Apple iPad Mini 6th Generation-Tablet-64 GB',LOAD_FILE('/static/images/ipad1.jpeg'), '/static/images/ipad1.jpeg',20, NOW(), 2 )
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Apple iPad Pro', 299.00, 'Apple iPad Pro 9.7 128Gb Silver Refurbished',LOAD_FILE('/static/images/ipad2.jpg'), '/static/images/ipad2.jpg',15, NOW(), 2 )
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Apple iPad Air', 499.99, 'Apple iPad Air 64GB In Space Gray',LOAD_FILE('/static/images/ipad3.jpg'), '/static/images/ipad3.jpg',20, NOW(), 2 )
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Apple iPad', 269.99, '2021 Apple iPad Mini (Wi-Fi, 64GB)Purple',LOAD_FILE('/static/images/ipad4.jpg'), '/static/images/ipad4.jpg',10, NOW(), 2 )
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Android Tablet', 189.99, '2GB RAM, 32GB ROM,Quad Core, HD IPS Screen,Bluetooth',LOAD_FILE('/static/images/ipad5.jpg'), '/static/images/ipad5.jpg',30, NOW(), 4)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Samsung Table', 249.99, 'SM-T817A Galaxy Tab  9.7 inches AT&T Wifi 4G',LOAD_FILE('/static/images/ipad6.jpg'), '/static/images/ipad6.jpg',35, NOW(), 4)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('GTA Vice City', 10.59, 'Grand Theft Auto: Vice City Steam Key GLOBAL',LOAD_FILE('/static/images/game1.jpg'), '/static/images/game1.jpg',40, NOW(), 3)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Pokémon Legends: Arceus', 59.59, 'Pokémon Legends: Arceus - Nintendo Switch',LOAD_FILE('/static/images/game.jpg'), '/static/images/game.jpg',30, NOW(), 3)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Halo Infinite', 29.99, 'The Art of Halo Infinite Hardcover-December 2021',LOAD_FILE('/static/images/game3.jpg'), '/static/images/game3.jpg',24, NOW(), 3)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('W2K22 Game', 69.99, 'WWE 2K22 Standard Edition-PlayStation 5',LOAD_FILE('/static/images/game4.jpg'), '/static/images/game4.jpg',29, NOW(), 3)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('play Station', 289.99, 'Sony PlayStation 4 500GB Console GameStop',LOAD_FILE('/static/images/game5.jpg'), '/static/images/game5.jpg',27, NOW(), 3)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('play Staion', 39.99, 'OIVO PS5 Stand with Suction Cooling Fan&Dual Charger',LOAD_FILE('/static/images/game6.jpg'), '/static/images/game6.jpg',24, NOW(), 3)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('iPad 10.2 Case', 29.99, 'SUPCASE Unicorn Beetle Pro Series Case with Screen Protector for iPad',LOAD_FILE('/static/images/case1.jpg'), '/static/images/case1.jpg',27, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Ipad air &pro case', 33.90, 'auaua Case for iPad with Pencil Holder  screen protecorfor ipad',LOAD_FILE('/static/images/case2.jpg'), '/static/images/case2.jpg',31, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('case for table', 19.99, 'Fintie Hybrid Slim Case for Samsung Galaxy Pen Holder',LOAD_FILE('/static/images/case3.jpg'), '/static/images/case3.jpg',35, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('iphone XR Case', 19.98, 'Cordking iPhone XR Case, Silicone Ultra Slim Shockproof Phone Case',LOAD_FILE('/static/images/case4.jpg'), '/static/images/case4.jpg',39, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('iphone 13 Case', 29.99, 'TAURI Defender Designed for iPhone 13 with 2 Pack Glass Screen&Camera',LOAD_FILE('/static/images/case5.jpg'), '/static/images/case5.jpg',36, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Galaxy A12 Case',19.99, 'Samsung Galaxy A12 Case with 2 Pack Screen Protector',LOAD_FILE('/static/images/case6.jpg'), '/static/images/case6.jpg',32, NOW(), 10)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('SONY Headset',32.00, 'SONY Over Ear Best Stereo Extra Bass Portable Headphones for iPhone Samsung mp3 Player',LOAD_FILE('/static/images/headsets.jpeg'), '/static/images/headsets.jpeg',30, NOW(), 5)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Philips Headset',39.99, 'Philips Computer Headset with Microphone',LOAD_FILE('/static/images/headset1.jpg'), '/static/images/headset1.jpg',25, NOW(), 5)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Rltek Handsfree',19.99, 'Sound Isolating Handsfree Headset Earphones Earbuds',LOAD_FILE('/static/images/headset2.jpg'), '/static/images/headset2.jpg',26, NOW(), 5)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('COMISO Earbud',52.99, 'Wireless,Bluetooth Earbuds,with Microphone,Charging Case',LOAD_FILE('/static/images/headset3.jpg'), '/static/images/headset3.jpg',20, NOW(), 5)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Apple AirPods Pro',249.95, 'Active noise cancellation for immersive sound hearing',LOAD_FILE('/static/images/headset4.jpg'), '/static/images/headset4.jpg',26, NOW(), 5)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Bone Headphones',73.99, 'Bone Conduction Headphones Bluetooth, Wireless MP3 Player',LOAD_FILE('/static/images/headset5.jpg'), '/static/images/headset5.jpg',29, NOW(), 5)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Keyboard&Mouse',24.15, 'Basics Wired Computer Keyboard and Wired Mouse, 10-Pack',LOAD_FILE('/static/images/keyboard1.jpg'), '/static/images/keyboard1.jpg',30, NOW(), 8)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('IPad Keyboard',39.99, 'iPad Pro Case with Keyboard for  Air 5th/4th Gen, Pencil Holder',LOAD_FILE('/static/images/keyboard2.jpg'), '/static/images/keyboard2.jpg',30, NOW(), 8)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Foldable Keyboard',56.64,'Foldable Bluetooth Wireless Keyboard,for PC,phone,Tablet&Laptop',LOAD_FILE('/static/images/keyboard3.jpg'), '/static/images/keyboard3.jpg',40, NOW(), 8)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Laser Keyboard',26.99,'Virtual Wireless Laser Keyboard Mouse Bluetooth Mobile Phone,Tablet',LOAD_FILE('/static/images/keyboard4.jpg'), '/static/images/keyboard4.jpg',30, NOW(), 8)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Ipad Keyboard',36.99,'Bluetooth Keyboard and Mouse Combo,Wireless',LOAD_FILE('/static/images/keyboard5.jpg'), '/static/images/keyboard5.jpg',28, NOW(), 8)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Bluetooth Mouse',19.59,'Bluetooth Mouse and Mouse Pad Wireless Mouse for Computer',LOAD_FILE('/static/images/mouse.jpg'), '/static/images/mouse.jpg',25, NOW(), 9)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('iPhone Charger',29.99,'iPhone Fast, Stuffcool 20W USB C Power Delivery Wall Charger for iPhone,iPad',LOAD_FILE('/static/images/charger1.jpg'), '/static/images/charger1.jpg',28, NOW(), 6)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Cluvox Charger',29.94,'Cluvox Fast USB C Wall Charger with Foldable Plug for iPhones',LOAD_FILE('/static/images/charger2.jpg'), '/static/images/charger2.jpg',28, NOW(), 6)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Anker Charger',29.99,'Anker Wireless 313 Charger,Qi-Certified 10W Max for iPhones',LOAD_FILE('/static/images/charger3.jpg'), '/static/images/charger3.jpg',20, NOW(), 6)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Charging boat',20.99,'USB Charging Station Multi Port Chargerfor iPhone iPad Samsung Tablets',LOAD_FILE('/static/images/charger4.jpg'), '/static/images/charger4.jpg',29, NOW(), 6)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Keymox Charger',29.64,'Keymox Portable Charger, USB-C Power Delivery,for iPhone, Samsung, iPad',LOAD_FILE('/static/images/charger5.jpg'), '/static/images/charger5.jpg',29, NOW(), 6)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('sumsung Charger',29.49,'USB C Charger,Spigen 45W Super,for GalaxyS22 Fold 3 Flip',LOAD_FILE('/static/images/charger6.jpg'), '/static/images/charger6.jpg',39, NOW(), 6)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('ION Speaker',69.00,'ION Audio Block Rocker,Bluetooth,100W Battery, Microphone',LOAD_FILE('/static/images/img9.jpeg'), '/static/images/img9.jpeg',49, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('JBL GTO609C Speaker',29.95,'JBL GTO609C Premium 6.5-Inch Speaker',LOAD_FILE('/static/images/img8.jpeg'), '/static/images/img8.jpeg',29, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Lezii Speaker',30.00,'Portable,IP67,FM Radio, Waterproof Speaker',LOAD_FILE('/static/images/speaker1.jpg'), '/static/images/speaker1.jpg',29, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Emeet Luna Speaker',86.95,'Bluetooth,Noise Reduction Algorithm USB Speaker',LOAD_FILE('/static/images/speaker2.jpg'), '/static/images/speaker2.jpg',31, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Sony Speaker',53.95,'XB13 Wireless,Waterproof Bluetooth Speaker',LOAD_FILE('/static/images/speaker3.jpg'), '/static/images/speaker3.jpg',35, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Shidu Speaker',43.99,'Portable,Rechargeable,Wired Microphone Speaker',LOAD_FILE('/static/images/speaker4.jpg'), '/static/images/speaker4.jpg',39, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Ortizan Speaker',40.97,'Portable,30H Playtime, Waterproof Speaker',LOAD_FILE('/static/images/speaker5.jpg'), '/static/images/speaker5.jpg',36, NOW(), 7)
INSERT into product  (name, price, description,image, image_location  ,stock, created_at, category_id) values ('Dikaou Speaker',45.00,'Torch Atmosphere Bluetooth Speaker',LOAD_FILE('/static/images/speaker6.jpg'), '/static/images/speaker6.jpg',26, NOW(), 7)

INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('Iphone 13 Pro', 1099.99, 'Apple iPhone 13 Pro Max 128 GB In Sierra Blue With Installment',LOAD_FILE('/static/images/phone1.jpg'), '/static/images/phone1.jpg',18, NOW() ,13);
INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('Samsung Galaxy', 999.59, 'Galaxy: Sumsung Certified Pre awoned',LOAD_FILE('/static/images/phone2.jpg'),'/static/images/phone2.jpg',28, NOW(),13 );
INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('Pixel', 899.99, 'Pixel 6 Pro Cloudy White 128GB',LOAD_FILE('/static/images/phone3.jpg'),'/static/images/phone3.jpg',38, NOW() ,13);
INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('Iphone 11',549.99, 'iPhone11 128GB-Unlocked & SIM-Free-RED-Apple',LOAD_FILE('/static/images/phone4.png'),'/static/images/phone4.png',18, NOW(),13 );
INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('Samsung Galaxy',1049.99, 'Samsung Galaxy S22+, 256GB In Pink',LOAD_FILE('/static/images/phone5.png'),'/static/images/phone5.png',28, NOW(),13 );
INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('Pixel',599.99, 'Pixel 6 Kinda Coral 128GB (Unlocked)',LOAD_FILE('/static/images/phone6.jpg'), '/static/images/phone6.jpg',15, NOW(),13 );


INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('MacBook Pro', 1499.99, 'Apple 13.3 MacBook Pro with Retina Display',LOAD_FILE('/static/images/cases.jpg'),'/static/images/cases.jpg',8, NOW() ,1);
INSERT into product  (name, price, description,image, image_location ,stock, created_at,category_id )  values ('Lenovo IdeaPad',647.99,'Core i5 1035G1/1 GHz-Win 10',LOAD_FILE('/static/images/comp2.jpg'), '/static/images/comp2.jpg',18, NOW(),1 );
INSERT into product  (name, price, description,image, image_location ,stock, created_at, category_id ) values ('ASUS Zenbook', 644.99, 'Ryzen 5 5500U, 8GB RAM, 256GB SSD, Windows 10, Light Gray',LOAD_FILE('/static/images/comp3.jpg'),'/static/images/comp3.jpg',8, NOW() ,1);
INSERT into product  (name, price, description,image, image_location ,stock, created_at,category_id )  values ('Acer Chromebook',230.99, 'Touchscreen Laptop, MediaTek MT8183C Core Pilot, 4GB RAM, 32GB HD, Chrome OS, Silver, CP311-3H-K23X ',LOAD_FILE('/static/images/comp4.jpg'), '/static/images/comp4.jpg',8, NOW(),1 );
INSERT into product  (name, price, description,image, image_location ,stock, created_at,category_id )  values ('HP 15.6" FHD Laptop',509.99, 'ntel Core i5-1135G7, 8GB RAM, 256GB SSD, Windows 11 Home, Natural Silver, 15-dy2095wm',LOAD_FILE('/static/images/comp5.jpg'), '/static/images/comp5.jpg',8, NOW(),1 );
INSERT into product  (name, price, description,image, image_location ,stock, created_at,category_id )  values ('Dell Chromebook 11',99.99, 'CB1C13 11.6" Laptop Intel Celeron 2955U 1.40GHz 4GB 16GB SSD ',LOAD_FILE('/static/images/comp6.jpg'),'/static/images/comp6.jpg',8, NOW(),1 );


SELECT * FROM  product p 
DELETE FROM product WHERE id = 52
ALTER TABLE product  AUTO_INCREMENT = 1;
ALTER TABLE product 
ADD COLUMN image_location varchar(200) AFTER image;
Update product 
	SET id = 33
	where id = 34
Update product 
	SET category_id = 11
	where category_id = 10
Update product 
	SET name   = 'Dell Chromebook'

	where name  ='Dell Chromebook 11'

UPDATE  product 
set description  = 'Cluvox Fast-USB-Wall Charger & Foldable Plug'
WHERE  description  = 'Cluvox Fast USB C Wall Charger with Foldable Plug'


Update product 
	SET name  = 'Keyboard-Mouse'
	where name  ='Keyboard&Mouse'
	
Select * from product 

Update product 
	SET category_id  = 2
	where id  = 60

	Select * from category c 

	
CREATE TABLE user_role (
   id int NOT NULL AUTO_INCREMENT,
   name varchar(10),
   PRIMARY KEY (id)
);
INSERT INTO user_role (name) values ('admin')
INSERT INTO user_role (name) values ('customer')
INSERT INTO user_role (name) values ('manager')
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
SELECT * FROM  users 
SELECT id, name FROM category
SELECT id, name FROM category order by name Asc

INSERT into users (firstname,lastname,email,password,address,city,State,zipcode,country,phone,created_at,user_role_id)
values ('Shakiba','Abdul Sattar','sabdulsattar9429@sdsu.edu','123453','4321 adams Ave', 'San Diego','california','92125','USA','619-2345467',NOW(), 1)
INSERT into users (firstname,lastname,email,password,address,city,State,zipcode,country,phone,created_at,user_role_id)values ('Shahad','Al Neesan','shahadd_88@yahoo.com','124456','5621 adams Ave', 'San Diego','california','92126','USA','619-9135467',NOW(), 1)



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

SELECT * from category order by id desc

SELECT * from product where category_id = 8 OR category_id = 9 order by id desc

-- Select * from category where name like %comp%
SELECT * FROM category WHERE name LIKE '%ch%';


SELECT * from product where category_id = 2 OR category_id = 4 order by id desc
SELECT * from product where category_id = 8 OR category_id = 9 order by id desc
SELECT * from product where category_id = 6 order by id desc

SELECT * from product where category_id = 3 order by id desc
SELECT * from product where category_id = 5 order by id desc
SELECT * from product where category_id = 10 order by id desc
select * from product where category_id = 7
SELECT * from product where category_id = 13 order by id desc
SELECT * from product where category_id = 1 order by id desc

CREATE TABLE  users_test  (
  id  int NOT NULL AUTO_INCREMENT,
  name varchar(35),
  email  varchar(35),
  password  varchar(100),
  PRIMARY KEY (id)
);

Select email, user_role_id  from users 
	where email = 'iqrasalam@gmail.com'
	AND password = '123445'

UPDATE users
SET user_role_id = 1
where email = 'iqrasalam@gmail.com'
	AND password = '123445'
	

	
