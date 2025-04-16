# Course-project-SQL
Course project for creating a database with SQL. 
Topic: Develop a database for a catalog and auto parts sales system. The catalog displays the type of products, make and model of cars for which each of them is suitable, description, catalog number, price, etc. A profile of buyers (clients) is kept from whom they shop, as well as a history of previous purchases made by them - service employee, price, discount used.
Tables: We have 7 tables with attributes to them and key relationships between them.
    1. Customers
      - id
      - name;
      - email;
      - address;
      - phone;
      - discount;
    2. Employees
      - id;
      - name;
      - email;
      - phone;
      - position;
    3. Orders
      - id;
      - discount;
      - customer_id;
      - employee_id;
      - total_price;
      - order_date;
    4. Payments
      - id;
      - status;
      - date;
      - order_id;
      - method;
    5. Car_Compatibility
      - id;
      - year_to;
      - year_from;
      - car_model;
      - product_id;
      - car_brand;
    6. Products
      - id;
      - catalogNumber;
      - name;
      - brand;
      - price;
      - quantity;
      - description;
      - createsdAt;
    7. Order_Items
      - id;
      - price;
      - quantity;
      - product_id;
      - order_id;
Relationships: 
    Customers - Orders 1:M FK(customer_id);
    Employees - Orders 1:M FK(employee_id);
    Orders - Payments 1:1 FK(order_id);
    Orders - Order_Items 1:M FK(order_id);
    Order_Items - Products M:N FK(product_id);
    Products - Car_Compatibility 1:M FK(product_id);
File information:
    - create_tables.sql: This file creates the tables and database.
    - insert_sample_data.sql: Makes records for each table in the database.
    - procedure.sql: Demonstrates the use of a procedure.
    - queries.sql: Demonstrates the execution of simple queries.
    - trigger.sql: Demonstrates the use of triggers.
