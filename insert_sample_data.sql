use autoStore;
INSERT INTO Products(id, name, description, catalog_number, price, brand, quantity, created_at) VALUES
(1, 'Маслен филтър', 'Филтър за масло за леки автомобили', 'MF12345', 15.99, 'Bosch', 100, '2023-12-20'),
(2, 'Спирачни накладки', 'Комплект предни накладки', 'SN56789', 45.50, 'Brembo', 50, '2020-10-10'),
(3, 'Акумулатор 75Ah', 'Акумулатор за дизелови автомобили', 'AK75A', 120.00, 'Varta', 30, '2022-03-20'),
(4, 'Въздушен филтър', 'Филтър за въздух за бензинови двигатели', 'VF23456', 20.99, 'Mann', 80, '2022-10-10'),
(5, 'Свещи за запалване', 'Иридиеви свещи комплект (4 бр.)', 'SZ78901', 60.00, 'NGK', 40, '2023-11-25');

INSERT INTO Car_Compatibility (id, product_id, car_brand, car_model, year_from, year_to) VALUES
(1, 1, 'Volkswagen', 'Golf', 2005, 2015),
(2, 2, 'BMW', '3 Series', 2010, 2020),
(3, 3, 'Audi', 'A4', 2012, 2022),
(4, 4, 'Mercedes', 'C-Class', 2010, 2021),
(5, 5, 'Toyota', 'Corolla', 2008, 2018);

INSERT INTO Customers (id, name, email, phone, address, dicount) VALUES
(1, 'Иван Петров', 'ivan.petrov@example.com', '+359888123456', 'София, ул. Витоша 10', 5),
(2, 'Мария Димитрова', 'maria.dimitrova@example.com', '+359885987654', 'Пловдив, бул. България 20', 10),
(3, 'Георги Иванов', 'georgi.ivanov@example.com', '+359888456789', 'Варна, ул. Черно море 15', 7),
(4, 'Петър Стоянов', 'peter.stoyanov@example.com', '+359887654321', 'Бургас, ул. Славейков 5', 5),
(5, 'Десислава Тодорова', 'desi.todorova@example.com', '+359886321987', 'Русе, ул. Левски 7', 8);


INSERT INTO Employees (id, name, email, phone, position) VALUES
(1, 'Стоян Колев', 'stoyan.kolev@example.com', '+359889111222', 'Продавач'),
(2, 'Елена Василева', 'elena.vasileva@example.com', '+359889222333', 'Консултант'),
(3, 'Димитър Ангелов', 'dimitur.angelov@example.com', '+359889333444', 'Мениджър продажби'),
(4, 'Радослав Георгиев', 'radoslav.georgiev@example.com', '+359889444555', 'Касиер'),
(5, 'Силвия Николова', 'silvia.nikolova@example.com', '+359889555666', 'Продавач');


INSERT INTO Orders (id, customer_id, employee_id, order_date, total_price, dicount_applied) VALUES
(1, 1, 1, '2024-02-15', 45.50, 2.28),
(2, 2, 2, '2024-02-16', 120.00, 12.00),
(3, 3, 3, '2024-02-17', 60.00, 4.20),
(4, 4, 4, '2024-02-18', 20.99, 1.05),
(5, 5, 5, '2024-02-19', 15.99, 1.28);

INSERT INTO Payments (id, order_id, method, status, date) VALUES
(1, 1, 'Кредитна карта', 'Платено', '2024-02-15'),
(2, 2, 'Банков превод', 'Платено', '2024-02-16'),
(3, 3, 'Наложен платеж', 'Очаква се', '2024-02-17'),
(4, 4, 'Кредитна карта', 'Платено', '2024-02-18'),
(5, 5, 'PayPal', 'Платено', '2024-02-19');


INSERT INTO Orders_Items (id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 2, 1, 45.50),
(2, 2, 3, 1, 120.00),
(3, 3, 5, 1, 60.00),
(4, 4, 4, 1, 20.99),
(5, 5, 1, 1, 15.99);

