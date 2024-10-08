create user InstaMartDB identified by "prince9808";

GRANT CREATE SESSION,RESOURCE TO INSTAMARTDB;

connect InstaMartDB;

CREATE TABLE role(id number(11) NOT NULL, name varchar(255) not NULL,active char(1) not NULL,PRIMARY KEY (id));

create sequence role_sequence;

create or replace trigger role_on_insert before insert on role for each row begin select role_sequence.nextval into :new.id from dual;end;
  2  /

insert into role(id,name,active)values(1,'Manager','1');

insert into role(id,name,active)values(2,'Customer','1');

create table users(id number(10),first_name varchar(30),last_name varchar(30),dob date,age number(10),contact_no varchar(15),email varchar(30),username  varchar(50),password varchar(50),role_id number(11),primary key(id),foreign key(role_id)references role(id));



create sequence users_sequence;


create or replace trigger users_on_insert before insert on users for each row begin select users_sequence.nextval into :new.id from dual;end;
  2  /


insert into users(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(1,'David','Ross','12/may/2023',34,9535476863,'david12@gmail.com','david12@gmail.com','david12@gmail.com',1);

insert into users(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(2,'Tina','Foster','08/june/1973',46,'7845547896','tina7@gmail.com','tina7@gmail.com','tina7@gmail.com',2);

insert into users(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) values(3,'Andy','Myers','24/feb/1978',41,'8974563214','andy@redif.com','andy@redif.com','andy@redif.com',2);

INSERT INTO users (id, first_name, last_name, dob, age, contact_no, email, username, password, role_id) values(4, 'Edward', 'Sanders', '19/mar/1975', 44, '9874563214', 'edward123@gmail.com', 'edward123@gmail.com', 'edward123@gmail.com', 2);

SQL> INSERT INTO users (id, first_name, last_name, dob, age, contact_no, email, username, password, role_id) values  (5, 'Jasmin', 'Castillo', '12/dec/1988', 31, '7845412365', 'jasmin45@yahoo.com', 'jasmin45@yahoo.com', 'jasmin45@yahoo.com', 1);


SQL> INSERT INTO users (id, first_name, last_name, dob, age, contact_no, email, username, password, role_id) values  (6, 'Eliphaz', 'Alvarez', '14/jan/1984', 35, '8523563214', 'eliphaz96@gmail.com', 'eliphaz96@gmail.com', 'eliphaz96@gmail.com', 2);


SQL> INSERT INTO users (id, first_name, last_name, dob, age, contact_no, email, username, password, role_id) values  (7, 'Dylan', 'Ruiz', '06/aug/1970', 49, '7525412365', 'dylan@gmail.com', 'dylan@gmail.com', 'dylan@gmail.com', 2);



SQL> INSERT INTO users (id, first_name, last_name, dob, age, contact_no, email, username, password, role_id) values (8, 'Sean', 'Mendoza', '11/nov/1968', 51, '6589563214', 'sean45@gmail.com', 'sean45@gmail.com', 'sean45@gmail.com', 2);



SQL> INSERT INTO users (id, first_name, last_name, dob, age, contact_no, email, username, password, role_id) values (9, 'Vincent', 'Gray', '19/may/1969', 50, '7865412365', 'gray@gmail.com', 'gray@gmail.com', 'gray@gmail.com', 2);



SQL> INSERT INTO users (id, first_name, last_name, dob, age, contact_no, email, username, password, role_id) values (10, 'Xavier', 'Bennet', '31/dec/1994', 25, '9876544381', 'bennet@redif.com', 'bennet@redif.com', 'bennet@redif.com', 2);



SQL> INSERT INTO users (id, first_name, last_name, dob, age, contact_no, email, username, password, role_id) values (11, 'Aana', 'James', '17/jan/1988', 31, '8976544381', 'james@gmail.com', 'james@gmail.com', 'james@gmail.com', 2);



SQL> INSERT INTO users (id, first_name, last_name, dob, age, contact_no, email, username, password, role_id) values (12, 'Eadmer', 'Wood', '15/feb/1993', 26, '7896544381', 'wood@gmail.com', 'wood@gmail.com', 'wood@gmail.com', 2);



SQL> create table address(id number(11) not null,user_id number(10),street varchar(45) not null,city varchar(45) not null,state varchar(45) not null,country varchar(45) not null,pincode number(11) not null,primary key(id),foreign key(user_id) references users(id));



INSERT INTO address VALUES (1,1,'1st main','Bangalore','Karnataka','India',577221);

INSERT INTO address VALUES (2,2,'2nd main','Chennai','Tamilnadu','India',577001);

 INSERT INTO address VALUES (3,3,'3rd main','Trivindrum','Kerala','India',597201);

INSERT INTO address VALUES (4,4,'4th main','Chennai','Karnataka','India',517208);
INSERT INTO address VALUES (5,5,'5th main','Bihar','Patna','India',377201);

INSERT INTO address VALUES (6,6,'6th main','Bangalore','Karnataka','India',587201);

INSERT INTO address VALUES (7,7,'7th main','Bangalore','Karnataka','India',176201);\

INSERT INTO address VALUES (8,8,'8th main','Hydrabad','AndraPradesh','India',174201);

INSERT INTO address VALUES (9,9,'9th main','Bangalore','Karnataka','India',677201);

INSERT INTO address VALUES (10,10,'10th main','Bangalore','Karnataka','India',577201);

INSERT INTO address VALUES (11,11,'12st main','Belguam','Karnataka','India',575631);

INSERT INTO address VALUES (12,12,'41nd main','Chennai','Tamilnadu','India',582501);

INSERT INTO address VALUES (13,2,'15 Main','Chennai','TamilNadu','India',577001);

INSERT INTO address VALUES (14,3,'15 Main','Chennai','TamilNadu','India',577001);


CREATE TABLE brand (  id number(11) NOT NULL,  name varchar(255) DEFAULT NULL,  PRIMARY KEY (id));

create sequence brand_sequence;

create or replace trigger brand_on_insert before insert on brand for each row begin select brand_sequence.nextval into :new.id from dual;end;
  2  /

INSERT INTO brand (id,name) VALUES (1,'Bosch');
INSERT INTO brand (id,name) VALUES (2,'Samsung');

INSERT INTO brand (id,name) VALUES (3,'LG');
INSERT INTO brand (id,name) VALUES (4,'Whirlpool');
INSERT INTO brand (id,name) VALUES (5,'Onida');
INSERT INTO brand (id,name) VALUES (6,'Stanley');
INSERT INTO brand (id,name) VALUES (7,'Mintwud');
INSERT INTO brand (id,name) VALUES (8,'Philips');


CREATE TABLE material (  id number(11) NOT NULL,  name varchar(255) DEFAULT NULL,  PRIMARY KEY (id));

create sequence material_sequence;

create or replace trigger material_on_insert before insert on material for each row begin select material_sequence.nextval into :new.id from dual;end;
  2  /

INSERT INTO material (id,name) VALUES (1,'Wood');
INSERT INTO material (id,name) VALUES (2,'Steel');
INSERT INTO material (id,name) VALUES (3,'Leather');
INSERT INTO material (id,name) VALUES (4,'Metal');
INSERT INTO material (id,name) VALUES (5,'Ceramic');
INSERT INTO material (id,name) VALUES (6,'Glass');


CREATE TABLE company (  id number(11) NOT NULL ,  address varchar(255) DEFAULT NULL,  name varchar(255) DEFAULT NULL,  PRIMARY KEY (id));

INSERT INTO company (id,address,name) VALUES (1,'H-9, Block B-1, Tughlaqabad Extension, Mohan Cooperative Industrial Estate, Tughlakabad, New Delhi, Delhi 110044','Cloudtail Pvt. Ltd.');
INSERT INTO company (id,address,name) VALUES (2,'Kattoor Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Maark Grand');
INSERT INTO company (id,address,name) VALUES (3,'290, Bharathiyar Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Marvel Furniture / Interiors');
INSERT INTO company (id,address,name) VALUES (4,'Shop No.24, Kattoor Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Modern Commercial Kitchen Equipments');
INSERT INTO company (id,address,name) VALUES (5,'700, Avinashi Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Royal Agencies');
INSERT INTO company (id,address,name) VALUES (6,'No. 150-151, Bharathiyar Rd, NG Narayanasamy St, Siddhapudur, New Siddhapudur, Coimbatore, Tamil Nadu 641044','Bloom Electronics Private Limited');
INSERT INTO company (id,address,name) VALUES (7,'10, Sathy Rd, C.K.Colony, B.K.R Nagar, Gandhipuram, Coimbatore, Tamil Nadu 641012','Securico Electronics I Ltd');
INSERT INTO company (id,address,name) VALUES (8,'S-26, 2nd Floor, No 61-71, Brooke Fields Plaza, Dr Krishnasamy Mudaliyar Rd, Coimbatore, Tamil Nadu 641001','Reliance Digital');


CREATE TABLE catalog_service_sector (
  id number(11) NOT NULL,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);
INSERT INTO catalog_service_sector (id,name) VALUES (1,'Home');
INSERT INTO catalog_service_sector (id,name) VALUES (2,'Office');


CREATE TABLE catalog_service_area (
  id number(11) NOT NULL ,
  category varchar(255) DEFAULT NULL,
  catalog_service_sector_id number(11) DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (catalog_service_sector_id) REFERENCES catalog_service_sector (id)
);

INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (1,'Living Room',1);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (2,'Conference Room',2);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (3,'Private Office',2);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (4,'Dining Room',1);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (5,'Laundry Room',1);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (6,'Bed Room',1);
INSERT INTO catalog_service_area (id,category,catalog_service_sector_id) VALUES (7,'Kitchen',1);

CREATE TABLE product_category(
id number(11) NOT NULL,
category varchar(255) Not NULL,
catalog_service_area_id number(11) NOT NULL,
PRIMARY KEY(id),
foreign key(catalog_service_area_id) references catalog_service_area(id));

insert into product_category(id,category,catalog_service_area_id)values(1,'Furniture',1);
insert into product_category(id,category,catalog_service_area_id)values(2,'Electronics',1);
insert into product_category(id,category,catalog_service_area_id)values(3,'Furniture',4);
insert into product_category(id,category,catalog_service_area_id)values(4,'Electronics',7);
insert into product_category(id,category,catalog_service_area_id)values(5,'Furniture',7);
insert into product_category(id,category,catalog_service_area_id)values(6,'Electronics',2);
insert into product_category(id,category,catalog_service_area_id)values(7,'Furniture',2);
insert into product_category(id,category,catalog_service_area_id)values(8,'Electronics',6);
insert into product_category(id,category,catalog_service_area_id)values(9,'Furniture',6);
insert into product_category (id,category,catalog_service_area_id) VALUES (10,'Appliances',1);
insert into product_category (id,category,catalog_service_area_id) VALUES (11,'Appliances',4);
insert into product_category (id,category,catalog_service_area_id) VALUES (12,'Appliances',7);
insert into product_category (id,category,catalog_service_area_id) VALUES (13,'Appliances',2);
insert into product_category(id,category,catalog_service_area_id)values(15,'Appliances',6);
insert into product_category(id,category,catalog_service_area_id)values(16,'Appliances',6);


CREATE TABLE product_type (  id number(11) NOT NULL,  type varchar(255) DEFAULT NULL,  product_category_id number(11) DEFAULT NULL,  PRIMARY KEY (id),  FOREIGN KEY (product_category_id) REFERENCES product_category (id));

INSERT INTO product_type (id,type,product_category_id) VALUES (1,'Chair',1);
INSERT INTO product_type (id,type,product_category_id) VALUES (2,'TV',2);
INSERT INTO product_type (id,type,product_category_id) VALUES (3,'Sofa',1);
INSERT INTO product_type (id,type,product_category_id) VALUES (4,'Washing Machine',16);
INSERT INTO product_type (id,type,product_category_id) VALUES (5,'Table',1);
INSERT INTO product_type (id,type,product_category_id) VALUES (6,'Bed',9);
INSERT INTO product_type (id,type,product_category_id) VALUES (7,'Oven',12);
INSERT INTO product_type (id,type,product_category_id) VALUES (8,'Desk',7);
INSERT INTO product_type (id,type,product_category_id) VALUES (9,'Mic',6);
INSERT INTO product_type (id,type,product_category_id) VALUES (10,'Laptop',6);
INSERT INTO product_type (id,type,product_category_id) VALUES (11,'Dinning Table',3);

CREATE TABLE product (  id number(11) NOT NULL,  color varchar(255) DEFAULT NULL,  dimensions varchar(255) DEFAULT NULL,  is_available char(1) DEFAULT NULL,  is_visible char(1) DEFAULT NULL,  name varchar(255) DEFAULT NULL,  brand_id number(11) DEFAULT NULL,  catalog_service_area_id number(11) DEFAULT NULL,  catalog_service_sector_id number(11) DEFAULT NULL,  company_id number(11) DEFAULT NULL,  material_id number(11) DEFAULT NULL,  product_category_id number(11) DEFAULT NULL,  product_type_id number(11) DEFAULT NULL,  city varchar(255) DEFAULT NULL,  image_url varchar(255) DEFAULT NULL,  PRIMARY KEY (id),  FOREIGN KEY (catalog_service_area_id) REFERENCES catalog_service_area (id),  FOREIGN KEY (brand_id) REFERENCES brand (id),  FOREIGN KEY (product_category_id) REFERENCES product_category (id),  FOREIGN KEY (catalog_service_sector_id) REFERENCES catalog_service_sector (id),  FOREIGN KEY (product_type_id) REFERENCES product_type (id),  FOREIGN KEY (material_id) REFERENCES material (id));



create sequence product_sequence;



create or replace trigger product_on_insert before insert on product for each row begin select product_sequence.nextval into :new.id from dual;end;
  2  /




INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (1,'Brown','121 X 121','1','1','Designer chair',1,1,1,1,1,1,1,'Bangalore','resources/images/products/p1.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (2,'Red','121 X 121','1','1','Recliner',1,1,1,5,1,1,1,'Coimbatore','resources/images/products/p2.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (3,'Blue','90 X 60 cm','1','1','Bosch 6.5Kg Washing Machines',1,5,1,2,2,16,4,'Chennai','resources/images/products/p3.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (4,'Dark Brown','H 29 x W 57 x D 33','1','1','Momoko 6 Seater Dining Set',6,4,1,6,2,3,11,'Trivindrum','resources/images/products/p4.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (5,'white','60 x 78','1','1','Takai Queen Size Beds',2,6,1,4,2,9,6,'Hydrabad','resources/images/products/p5.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (6,'Black','52 x 40.2 x 35.6 cm','1','1','Philips 25-Litre Digital Oven',8,7,1,4,2,12,7,'Chennai','resources/images/products/p6.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (7,'Brown','80 cm (w)  x 192 cm (h)','1','0','Ebony Wardrobe',8,6,1,3,1,9,6,'Chennai','resources/images/products/p7.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible,name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (8,'Black','14 inch','0','1','Lenovo Ideapad Core i3',8,2,2,8,2,6,10,'Chennai','resources/images/products/p8.png');

CREATE TABLE product_rate (
  id number(11) NOT NULL,
  end_date date DEFAULT NULL,
  rate varchar(255) DEFAULT NULL,
  start_date datetime DEFAULT NULL,
  product_id number(11) DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (product_id) REFERENCES product (id)
);

create sequence product_rate_sequence;


create or replace trigger product_rate_on_insert before insert on product_rate for each row begin select product_rate_sequence.nextval into :new.id from dual;end;


INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (1,NULL,'1500','22/oct/2019 09:37:36',1);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (2,NULL,'1540','22/oct/2019',2);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (3,NULL,'15000.0','22/oct/2019',3);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (4,NULL,'28000.0','22/oct/2019',4);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (5,NULL,'12500.0','22/oct/2019',5);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (6,NULL,'6000.0','22/oct/2019',6);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (7,NULL,'7000.0','22/oct/2019',7);
INSERT INTO product_rate (id,end_date,rate,start_date,product_id) VALUES (8,NULL,'27000.0','22/oct/2019',8);

CREATE TABLE rental_package (
  id number(11) NOT NULL ,
  name varchar(25) DEFAULT NULL,
  is_visible char(1) not NULL,
  is_available char(1) not NULL,
  created_date date not NULL,
  city varchar(50) not null,
  image_url varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

create sequence rental_package_sequence;

create or replace trigger rental_package_on_insert before insert on rental_package for each row begin select rental_package_sequence.nextval into :new.id from dual;end;


insert into rental_package(id,name,is_visible,is_available,created_date,city,image_url)values(1,'Pacakge1',1,1,'11/nov/2018','Bengaluru','resources/images/packages/r1.png');
insert into rental_package(id,name,is_visible,is_available,created_date,city,image_url)values(2,'Pacakge2',1,1,'25/aug/2018','Chennai','resources/images/packages/r2.png');
insert into rental_package(id,name,is_visible,is_available,created_date,city,image_url)values(3,'Pacakge3',1,1,'25/aug/2018','Chennai','resources/images/packages/r3.png');

CREATE TABLE rental_package_rate (
  id number(11) NOT NULL,
  rental_package_id number(11) NOT NULL,
  rate number(11) NOT NULL,
  start_date date not NULL,
  end_date date NULL,
  PRIMARY KEY (id),
  foreign key(rental_package_id) references rental_package(id));

create sequence rental_package_rate_sequence;

create or replace trigger rental_package_rate_on_insert before insert on rental_package_rate for each row begin select rental_package_rate_sequence.nextval into :new.id from dual;end;

insert into rental_package_rate(id,rental_package_id,start_date,end_date,rate)values(1,1,'12/dec/2016',NULL,22500);
insert into rental_package_rate(id,rental_package_id,start_date,end_date,rate)values(2,2,'10/sep/2018',NULL,42040);
insert into rental_package_rate(id,rental_package_id,start_date,end_date,rate)values(3,3,'10/oct/2018',NULL,32040);

CREATE TABLE rental_package_product (
  id number(11) NOT NULL ,
  package_id number(11) NOT NULL,
  product_id number(11) NOT NULL,
  PRIMARY KEY (id),
  foreign key(package_id) references rental_package(id),
  foreign key(product_id) references product(id));


insert into rental_package_product(id,package_id,product_id)values(1,1,1);
insert into rental_package_product(id,package_id,product_id)values(2,1,3);
insert into rental_package_product(id,package_id,product_id)values(3,1,6);
insert into rental_package_product(id,package_id,product_id)values(4,2,2);
insert into rental_package_product(id,package_id,product_id)values(5,2,4);
insert into rental_package_product(id,package_id,product_id)values(6,2,5);
insert into rental_package_product(id,package_id,product_id)values(7,3,7);
insert into rental_package_product(id,package_id,product_id)values(8,3,8);
