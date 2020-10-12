SHOW DATABASES;

USE truyum_data;

-- MENU ITEM LIST ADMIN

CREATE TABLE menu_item(
	id INT PRIMARY KEY AUTO_INCREMENT,
    menu VARCHAR(20),
    price INT,
    active VARCHAR(20),
    date_of_launch VARCHAR(20),
    category VARCHAR(20),
    free_delivery VARCHAR(20)
);
 INSERT INTO menu_item(menu,price,active,date_of_launch,category,free_delivery)
 VALUES('sandwich',99,'yes','2017-03-15','main course','yes'),('burger',129,'yes','2017-12-23','main course','no'),('pizza','149','yes','2017-08-21','main course','no'),('frech fries','57','no','2017-07-02','starters','yes'),('chocolate brownie','32','yes','2022-11-02','dessert','yes');
 
 SELECT * FROM menu_item;
 
 -- MENU ITEM LIST CUSTOMER
 
 SELECT * FROM menu_item
 WHERE date_of_launch = '2017-03-15' AND active = 'yes';
 
 -- EDIT MENU ITEM
 
 SELECT * FROM menu_item
 WHERE id = 1;
 
 UPDATE menu_item
 SET price = 90
 WHERE id = 1;
 
 -- USER TABLE
 
 CREATE TABLE user_table(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20)
 );
 INSERT INTO user_table(user_name)
 VALUES ('mohit'),('rajesh');
 
 SELECT * FROM user_table;
 SHOW TABLES;
 
 -- ADD TO CART
 
 CREATE TABLE cart(
	cart_id INT PRIMARY KEY AUTO_INCREMENT,
    id INT,
    user_id INT,
    name VARCHAR(20),
    price INT,
    free_delivery VARCHAR(20),
    FOREIGN KEY (id) REFERENCES menu_item(id),
    FOREIGN KEY (user_id) REFERENCES user_table(user_id)
 );
 INSERT INTO cart(id,user_id,name,price,free_delivery)
 VALUES(1,2,'sandwich',99,'yes'),(2,2,'burger',129,'no'),(3,2,'pizza',149,'no');
 
 -- VIEW CART
 
 SELECT * FROM cart
 WHERE user_id = 2;
 
 SELECT SUM(price) FROM cart
 WHERE user_id=2;
 
 -- REMOVE ITEM FROM CART
 
 DELETE FROM cart
 WHERE user_id = 2 AND id = 1;
 

 
                                                                                                                                                                                                                                                                                                                  