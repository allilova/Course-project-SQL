use autoStore;
select * from Payments
where status like '%Платено%';

select method, count(*) from Payments group by method;

SELECT 
    Orders.id AS order_id,
    Customers.name AS customer_name,
    Employees.name AS employee_name,
    Products.name AS product_name,
    Orders_Items.quantity,
    Orders_Items.unit_price,
    Orders.order_date
FROM Orders
INNER JOIN Customers ON Orders.customer_id = Customers.id
INNER JOIN Employees ON Orders.employee_id = Employees.id
INNER JOIN Orders_Items ON Orders.id = Orders_Items.order_id
INNER JOIN Products ON Orders_Items.product_id = Products.id;

SELECT 
    Orders.id AS order_id,
    Customers.name AS customer_name,
    Orders.order_date,
    Payments.method,
    Payments.status
FROM Orders
LEFT OUTER JOIN Payments ON Orders.id = Payments.order_id
INNER JOIN Customers ON Orders.customer_id = Customers.id;

SELECT name, email
FROM Customers
WHERE id IN (
    SELECT customer_id
    FROM Orders
    WHERE total_price > 50
);

SELECT 
    Employees.name AS employee_name,
    COUNT(Orders.id) AS total_orders_handled
FROM Employees
LEFT JOIN Orders ON Employees.id = Orders.employee_id
GROUP BY Employees.name;




