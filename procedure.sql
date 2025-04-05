use autoStore;
DELIMITER //
CREATE PROCEDURE update_product_prices()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE product_id INT;
    DECLARE current_price DECIMAL(10, 2);
    
    DECLARE product_cursor CURSOR FOR 
        SELECT id, price FROM Products;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN product_cursor;
    
    read_loop: LOOP
        FETCH product_cursor INTO product_id, current_price;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
    
        UPDATE Products
        SET price = current_price * 1.10
        WHERE id = product_id;
    END LOOP;

    CLOSE product_cursor;
END //
DELIMITER ;
CALL update_product_prices();
SELECT id, name, price FROM Products;

