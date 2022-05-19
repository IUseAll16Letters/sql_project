

DROP VIEW IF EXISTS `customers_purchase_data`;
CREATE VIEW `customers_purchase_data` AS
	SELECT 
		CONCAT(firstname, ' ', lastname) AS `Customer_name`, 
		SUM(cost) `Orders_total_sum`, MAX(o.`created_at`) AS `Last_order`,
		DENSE_RANK() OVER (ORDER BY SUM(cost) DESC) AS `ranked` 
	FROM 
		`orders` o
		left join `customers` c on o.customer = c.customer_id
	GROUP BY customer
	ORDER BY `Orders_total_sum` DESC
	LIMIT 5;
	

DROP VIEW IF EXISTS `most_required_prods`;
CREATE VIEW `most_required_prods` AS
	WITH 
		customers_ordered AS 
		(SELECT 
			customer, 
			customer_id, 
			COUNT(cost) AS orders_total 
			FROM 
				customers c 
				LEFT JOIN orders o ON c.customer_id = o.customer 
			GROUP BY customer_id)

	SELECT CONCAT(p.title, ' ', p.product_name) AS product_name, count(product) AS added_in_wishlist
		FROM `wishlist` w
		LEFT JOIN `customers_ordered` co ON w.customer = co.customer
		LEFT JOIN `products` p ON p.product_id = w.product
	WHERE `orders_total` > 0
	GROUP BY product
	HAVING COUNT(product) > 1
	ORDER BY added_in_wishlist DESC;


DROP VIEW IF EXISTS `sales_by_store`;
CREATE VIEW `sales_by_store` AS
SELECT shop_name, IF(sum(cost) IS NOT NULL, sum(cost), 0) AS total_income
	from shops s
	left join orders o on s.shop_id = o.shop
group by shop_name;


DROP VIEW IF EXISTS `current_product_inventory`;
CREATE VIEW `current_product_inventory` AS
SELECT p.title, p.product_name, p.sku, IF(JSON_EXTRACT(p.meta, "$.genre") IS NOT NULL, JSON_EXTRACT(p.meta, "$.genre"), JSON_EXTRACT(p.meta, "$.brand")) AS product_details, i.shop, i.amount 
FROM 
	inventory i
	LEFT JOIN products p on i.product = p.product_id
ORDER BY i.shop, p.product_id;


DROP VIEW IF EXISTS `average_delivery_time`;
CREATE VIEW `average_delivery_time` AS
WITH delivery_data AS
	(SELECT `order`, timestampdiff(hour, date_Step_beg, date_step_end) AS dlv_hr FROM `orders_steps` WHERE step = 3)

SELECT CONCAT(ROUND(AVG(dlv_hr) / 24, 1), ' DAYS') AS `average_delivery_time`, CONCAT(round((max(dlv_hr) / 24), 1), ' DAYS') `longest_delivery_time`
FROM 
	delivery_data;
	
	
	