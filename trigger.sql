use autoStore;
DELIMITER //

CREATE TRIGGER update_product_stock
AFTER INSERT ON Orders_Items
FOR EACH ROW
BEGIN
    UPDATE Products
    SET quantity = quantity - NEW.quantity
    WHERE id = NEW.product_id;
END //

DELIMITER ;

UPDATE Products
SET quantity = quantity - 5
WHERE id = 2;

SELECT name, quantity FROM Products;