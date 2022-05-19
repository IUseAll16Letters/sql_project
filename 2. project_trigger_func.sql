

## Remove if not necessary
SET GLOBAL log_bin_trust_function_creators = 1;

delimiter //

# 
DROP TRIGGER IF EXISTS orders_steps//
CREATE TRIGGER orders_steps AFTER INSERT ON vinylovoe_vino.orders
FOR EACH ROW
	BEGIN
		INSERT INTO vinylovoe_vino.orders_steps (`order`, `step`, `date_step_beg`) VALUES (new.order_id, '1', NOW());
		INSERT INTO vinylovoe_vino.orders_steps (`order`, `step`) VALUES (new.order_id, '2');
		INSERT INTO vinylovoe_vino.orders_steps (`order`, `step`) VALUES (new.order_id, '3');	
	END//

#
DROP FUNCTION IF EXISTS calc_cost//
CREATE FUNCTION calc_cost(id_last BIGINT)
RETURNS decimal(14, 2)

BEGIN
	DECLARE value DECIMAL(14, 2);
	SET value = (SELECT sum(price * amount) 
				   FROM orders_products op 
					    JOIN products p ON op.product = p.product_id 
				  WHERE `order_product_id` = id_last);
	RETURN value;
END//

#
DROP TRIGGER IF EXISTS calc_cst//
CREATE TRIGGER calc_cst 
AFTER INSERT 
ON `orders_products` FOR EACH ROW
	BEGIN
		SET @last_id = (select `order_product_id` from `orders_products` order by `order_product_id` desc limit 1);
		UPDATE `orders`
		SET `orders`.`cost` = `orders`.cost + (SELECT calc_cost(@last_id))
		WHERE order_id = new.`order_`;
	END//

delimiter ;

