
drop table Transaction_Contains cascade;
drop table Transactions cascade;
drop table Product cascade;
drop table Customer cascade;

CREATE TABLE Product(
	UPC VARCHAR(30), 
        brand VARCHAR(30), 
	product_name VARCHAR(50),
	product_description VARCHAR(200), 
	category VARCHAR(30), 
	marked_price REAL,
	quantity_in_stock INTEGER, 
	Primary Key (UPC)); 
					 
CREATE TABLE Customer(
	customer_ID INTEGER,
	first_name VARCHAR(50),
	last_name VARCHAR(50), 
	age INTEGER,
	gender CHAR(1) CHECK (gender IN ('M','F')),
	zip_code INTEGER, 
	Primary Key (customer_ID)); 
					  
CREATE TABLE Transactions(
	transaction_ID INTEGER,
	customer_ID INTEGER,
	transaction_date Date, 
	payment_method CHAR(1) CHECK(payment_method IN ('1', '2', '3')),
	total REAL, 
	Primary Key (transaction_ID),
	Foreign Key (customer_ID) REFERENCES Customer (customer_ID));
						  
CREATE TABLE Transaction_Contains(
	transaction_ID INTEGER,
	UPC VARCHAR(30),
	quantity INTEGER,
	Primary Key (transaction_ID, UPC),
	Foreign Key (transaction_ID) REFERENCES Transactions (transaction_ID),
	Foreign Key (UPC) REFERENCES Product (UPC)); 
								  
INSERT INTO Product VALUES ('10001','Welsh Farms','Whole Milk 1 Gal','Welsh Farms Whole Milk Size 1 Gallon','Dairy', 3.5,30);

INSERT INTO Product VALUES ('10002','Eggland', 'Eggs L 12ct','Large Eggs - 12 count','Dairy',2.25,19);

INSERT INTO Product VALUES ('10003','Kraft', 'Kraft Mac n Cheese','Kraft Macaroni and Cheese Original Flavor Individual Box','Food',1.69,38);

INSERT INTO Product VALUES ('10004','Rice-a-Roni','Rice-A-Roni Cajun','Rice-A-Roni Rice Dishes - Flavor Cajun Chicken','Food', 1.3,49);

INSERT INTO Product VALUES ('10005','Pringles', 'Pringles Sour Cream and Onion','Pringles Potato Chips - Sour Cream and Onion Flavor - 6 oz','Snack',4.5,28);

INSERT INTO Product VALUES ('10006','Tostitos','Tostitos Family Size','Tostitos Corn Chips - Family Size 1 lb','Snack', 6,18);

INSERT INTO Product VALUES ('10007','Store Brand','Lettuce','Lettuce - 1 head','Produce', 2.5,24);

INSERT INTO Product VALUES ('10008','Store Brand','Tomatoes','Tomatoes - 1 lb','Produce', 1.99,12); 

INSERT INTO Product VALUES ('10009','Florida Natural','Oranges','Oranges - Large Size - 1 lb','Produce', 3.5,38); 

INSERT INTO Product VALUES ('10010','Store Brand', 'Broccoli','Fresh Broccoli Crowns - 1 lb','Produce',3.5,17);

INSERT INTO Product VALUES ('10011','Tropicana', 'Tropicana Pure Premium OJ 1 Gal','Tropicana Pure Premium Orange Juice - Size 1 Gallon','Beverages',3.99,48);

INSERT INTO Product VALUES ('10012','Coca-Cola','Coca-Cola 2L','Coca-Cola Regular - Size 2 Liters','Beverages', 1.99,94);

INSERT INTO Product VALUES ('10013', 'Pepsi', 'Pepsi 2L', 'Pepsi Regular - Size 2 Liters', 'Beverages', 1.99, 50);

INSERT INTO Product VALUES ('10014', 'Pepsi', 'Diet Pepsi 2L', 'Diet Pepsi - Size 2 Liters', 'Beverages', 1.99, 30);

INSERT INTO Product VALUES ('10015','Colgate', 'Colgate Winterfresh','Colgate Toothpaste Winterfresh Flavor 3.8 oz','Pharmacy',4,26);

INSERT INTO Product VALUES ('10016','Crest','Crest Whitening Mint','Crest Whitening Toothpaste - Mint Flavor 3.6 oz','Pharmacy', 3.79,28); 

INSERT INTO Product VALUES ('10017','Claritin', 'Claritin 24 Hour','Claritin 24 Hour Allergy Relief - 90 ct','Pharmacy',13.59,18); 

INSERT INTO Product VALUES ('10018','Store Brand','Beef Top Sirloin','Fresh Beef - Cut Top Sirloin - 1 lb','Meat', 8.99,27); 

INSERT INTO Product VALUES ('10019','Store Brand', 'Pork Shoulder','Fresh Pork - Cut Shoulder - 1 lb','Meat',6.59,9); 

INSERT INTO Product VALUES ('10020','Store Brand', 'Ground Chuck','Beef - Ground Chuck 94 percent Lean - 1 lb','Meat',6,22); 

INSERT INTO Product VALUES ('10021','Boars Head','Honed Glazed Ham','Deli Meat - Honey Glazed Ham - 1 lb','Deli', 7.5,51); 

INSERT INTO Product VALUES ('10022','Boars Head','Oven Smoked Turkey','Deli Meat - Oven Smoked Turkey - 1 lb','Deli', 7.5,15); 

INSERT INTO Product VALUES ('10023','Kraft', 'Sliced Provolone','Deli Cheese - Sliced Provolone - 1 lb','Deli',5.5,29); 

INSERT INTO Product VALUES ('10024','Kraft','Sliced Jarlsberg','Deli Cheese - Sliced Jarlsberg - 1 lb','Deli', 5.5,21); 

INSERT INTO Product VALUES ('10025','Arnold', 'Hot Dog Buns','Arnold Hot Dog Buns - 6 ct','Bakery',2,92);

INSERT INTO Product VALUES ('10026','Arm and Hammer', 'Baking Soda','Arm and Hammer Baking Soza - 1 lb','Household',9,39);

INSERT INTO Product VALUES ('10027','Charmin', 'Charmin Extra Soft Family Pack','Charmin Extra Soft Bathroom Tissue - 16 ct','Household',15,15); 

INSERT INTO Product VALUES ('10028','Kleenex', 'Kleenex 250','Kleenex Tissue - 250 ct - floral box','Household',3,41); 

INSERT INTO Product VALUES ('10029','Budweiser', 'Bud Light 24-pk','Bud Light Case of Beer - 24 count','Alcohol',29.99,10);

INSERT INTO Product VALUES ('10030','Budweiser','Budweiser 24-pk','Original Budweiser Case of Beer - 24 count','Alcohol', 29.99,20); 

INSERT INTO Product VALUES ('10031','Coors', 'Coors Light 12-pk','Original Coors The Banquet Beer 12 Pack','Alcohol',16.5,73); 

INSERT INTO Product VALUES ('10032','Miller', 'MGD 12-pk','Miller Genuine Draft Beer 12 Pack','Alcohol',16.5,27);

INSERT INTO Customer VALUES (1,'David','Smith',30,'M',22030); 

INSERT INTO Customer VALUES (2,'Candice','Bolton',27,'F',22030); 

INSERT INTO Customer VALUES (3,'David','Goldenberg',65,'M',22030);

INSERT INTO Customer VALUES (4,'Greg','Jennings',25,'M',22030); 

INSERT INTO Customer VALUES (5,'Aaron','Rodgers',32,'M',20121);

INSERT INTO Customer VALUES (6,'Lindsey','Lohan',24,'F',20121); 

INSERT INTO Customer VALUES (7,'Alec','Baldwin',62,'M',20121); 

INSERT INTO Customer VALUES (8,'John','Wayne',37,'M',22030); 

INSERT INTO Customer VALUES (9,'John','Wayne',31,'M',22015); 

INSERT INTO Customer VALUES (10,'Jennifer','Johnson',19,'F',22030); 

INSERT INTO Transactions VALUES (101,4,'2013-02-10','1',28.17); 

INSERT INTO Transactions VALUES (102,9,'2013-02-12','2',36.48); 

INSERT INTO Transactions VALUES (103,1,'2013-02-15','2',96.15); 

INSERT INTO Transactions VALUES (104,10,'2013-02-20','3',84.74); 

INSERT INTO Transactions VALUES (105,3,'2013-02-15','2',12.50); 

INSERT INTO Transactions VALUES (106,1,'2013-02-15','2',39.38); 

INSERT INTO Transaction_Contains VALUES (101,'10003',2); 

INSERT INTO Transaction_Contains VALUES (101,'10005',3); 

INSERT INTO Transaction_Contains VALUES (101,'10012',1); 

INSERT INTO Transaction_Contains VALUES (101,'10013',5); 

INSERT INTO Transaction_Contains VALUES (102,'10001',1); 

INSERT INTO Transaction_Contains VALUES (102,'10002',2); 


INSERT INTO Transaction_Contains VALUES (102,'10003',5); 

INSERT INTO Transaction_Contains VALUES (102,'10005',1); 

INSERT INTO Transaction_Contains VALUES (102,'10009',1); 

INSERT INTO Transaction_Contains VALUES (102,'10014',2); 

INSERT INTO Transaction_Contains VALUES (102,'10015',2); 





INSERT INTO Transaction_Contains VALUES (103,'10010',4); 

INSERT INTO Transaction_Contains VALUES (103,'10011',1); 
INSERT INTO Transaction_Contains VALUES (103,'10012',2); 

INSERT INTO Transaction_Contains VALUES (103,'10014',2); 


INSERT INTO Transaction_Contains VALUES (103,'10015',1); 
INSERT INTO Transaction_Contains VALUES (103,'10017',1); 
INSERT INTO Transaction_Contains VALUES (103,'10018',2); 
INSERT INTO Transaction_Contains VALUES (103,'10020',1); 

INSERT INTO Transaction_Contains VALUES (103,'10023',1);
INSERT INTO Transaction_Contains VALUES (103,'10025',3); 
INSERT INTO Transaction_Contains VALUES (103,'10032',2); 
 


 INSERT INTO Transaction_Contains VALUES (104,'10012',4); 
 
 INSERT INTO Transaction_Contains VALUES (104,'10030',3); 
 
 INSERT INTO Transaction_Contains VALUES (104,'10010',5); 
 
 INSERT INTO Transaction_Contains VALUES (104,'10002',1); 
 
 INSERT INTO Transaction_Contains VALUES (104,'10001',1); 
 
 INSERT INTO Transaction_Contains VALUES (104,'10031',2);  
 
 INSERT INTO Transaction_Contains VALUES (105,'10005',2); 
 
 INSERT INTO Transaction_Contains VALUES (105,'10004',3); 
 
 INSERT INTO Transaction_Contains VALUES (106,'10021',1); 
 
 INSERT INTO Transaction_Contains VALUES (106,'10027',2); 
 
 SELECT * FROM Product; 
 
 SELECT * FROM Customer; 
 
 SELECT * FROM Transactions; 
 
 SELECT * FROM Transaction_Contains;

COMMIT WORK;

/* 1 */

SELECT UPC FROM Product
where category='Deli';

/*2*/

select first_name,last_name from Customer
where age>=60 and zip_code=22030;

/*3*/

select distinct t.customer_ID from Transactions t, Transaction_Contains c, Product p
where t.transaction_ID=c.transaction_ID and c.UPC=p.UPC and p.category='Deli';


/*4*/

select distinct t.customer_ID from Transactions t join Transaction_Contains c on t.transaction_ID=c.transaction_ID 
join Product p on c.UPC=p.UPC where p.brand='Pepsi' or p.brand='Coca-Cola';

/*5*/

select distinct a.customer_ID from Customer a
join Transactions t on t.customer_ID=a.customer_ID
 join Transaction_Contains c on t.transaction_ID=c.transaction_ID 
 join Product p on c.UPC=p.UPC where p.brand='Pepsi' and p.brand='Coca-Cola'
 group by t.transaction_ID;
 
 
/*6*/

select customer_ID from Customer where customer_ID not in (select customer_id from Transactions);


/*7*/

select sum(quantity) as 'total quantity' from transaction_contains c join Transactions t on c.transaction_ID=t.transaction_ID
join Customer a on a.customer_ID=t.customer_ID where a.age>=30;

/*8*/

select a.first_name,a.last_name from Customer a join Transactions t on a.customer_ID=t.customer_ID
group by a.customer_ID
having sum(t.total)>100;

