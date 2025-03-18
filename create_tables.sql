create database autoStore;
create table Products(
id integer auto_increment primary key,
name varchar(20) unique,
description varchar(255),
catalog_number varchar(10),
price decimal(10, 2),
brand varchar(20),
quantity integer,
created_at varchar(100)
);

create table Car_Compatibility(
id integer auto_increment primary key,
product_id integer,
car_brand varchar(100),
car_model varchar(100),
year_from year,
year_to year,
foreign key(product_id) references Products(id)
);

create table Customers(
id integer auto_increment primary key,
name varchar(255) unique,
email varchar(255) unique,
phone varchar(15), 
address varchar(255),
dicount decimal(5, 2)
);

create table Employees(
id integer auto_increment primary key,
name varchar(255) unique,
email varchar(255) unique,
phone varchar(15),
position varchar(255)
);

create table Orders(
id integer auto_increment primary key,
customer_id integer,
employee_id integer,
order_date date,
total_price decimal(10, 2),
dicount_applied decimal(5, 2),
foreign key(customer_id) references Customers(id),
foreign key(employee_id) references Employees(id)
);

create table Orders_Items(
id integer auto_increment primary key,
order_id integer,
product_id integer,
quantity integer,
unit_price decimal(10, 2),
foreign key(order_id) references Orders(id),
foreign key(product_id) references Products(id)
);

create table Payments(
id integer auto_increment primary key,
order_id integer,
method varchar(100),
status varchar(100),
date date,
foreign key(order_id)references Orders(id)
);


