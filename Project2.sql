drop table Customer cascade;
drop table transaction cascade;
drop table products cascade;
drop table quantity cascade;

Create table Customer(
customer_id int(4) not null primary key,
age int(2),
gender char,
zipcode int(6),
firstname varchar(30),
lastname varchar(30),
check(gender='M' or gender='F')
);

Create table Transaction(
transaction_id int(4) not null primary key,
transaction_date date,
payment_method int,
total int(6),
check(payment_method=1 or payment_method=2 or payment_method=3)
);
 
 Create table products(
upc int(6) not null primary key,
brand varchar(20),
product_name varchar(25),
product_desc varchar(200),
marked_price float(5),
category varchar(15),
quantity_in_stock int(4)
);

Create table quantity(
upc int(6) not null,
transaction_id int(4) not null,
foreign key (upc) references products(upc),
foreign key (transaction_id) references transaction(transaction_id),
primary key (upc, transaction_id)
);