
DROP DATABASE IF EXISTS `vinylovoe_vino`;
CREATE DATABASE `vinylovoe_vino`;


USE `vinylovoe_vino`;


DROP TABLE IF EXISTS `prod_categories`;
CREATE TABLE `prod_categories`(
	`category_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	`category_name` VARCHAR(30),
	`created_at` timestamp,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`category_id`)
) COMMENT 'Categories of the products of the shop';


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`(
	`product_id` SERIAL,
	`category` TINYINT UNSIGNED NOT NULL,
	`title` VARCHAR(100),
	`product_name` VARCHAR(150),
	`summary` TINYTEXT,
	`meta` JSON,
	`wpseo_titles` VARCHAR(150) DEFAULT (CONCAT('Купить ', `title`, ' музыка')), 
	`slug` VARCHAR(152) NULL DEFAULT (CONCAT('/', `product_name`, '/')),
	`sku` VARCHAR(11) UNIQUE,
	`price` DECIMAL(8, 2) DEFAULT 0.00,
	`context` TEXT DEFAULT ('No description...'),
	`created_at` timestamp,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`product_id`),
	FOREIGN KEY (`category`) REFERENCES `prod_categories` (`category_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) COMMENT '
Table for storing products of the shop, united in one table.
Meta is JSON for more details stored, SKU - Stock keeping unit
WPSEO - SEO optimization arg
slug - WEB optimization arg';


DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts`(
	`district_id` TINYINT unsigned NOT NULL AUTO_INCREMENT UNIQUE,
	`district_name` VARCHAR(50),
	`created_at` timestamp,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`district_id`)
) COMMENT 'Store is located in Saint-Petersburg, only need to keep city districts';


DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops`(
	`shop_id` TINYINT unsigned NOT NULL AUTO_INCREMENT UNIQUE,
	`shop_name` VARCHAR(50),
	`district` TINYINT unsigned NOT NULL,
	`address` VARCHAR(70),
	`created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`shop_id`),
	FOREIGN KEY (`district`) REFERENCES `districts` (`district_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) COMMENT 'Shops opened within the online shop network';


DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`(
	`service_id` SERIAL,
	`service_name` VARCHAR(50) DEFAULT NULL,
	`created_at` timestamp,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`service_id`)
) COMMENT 'Services, added to every order, since they are free of charge (read - included in product prices)';

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`(
	`inventory_id` SERIAL,
	`shop` TINYINT unsigned NOT NULL,
	`product` BIGINT unsigned NULL,
	`amount` INT unsigned NOT NULL DEFAULT 0,
	`created_at` timestamp,
	`last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`inventory_id`),
	FOREIGN KEY (`shop`) REFERENCES `shops` (`shop_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY (`product`) REFERENCES `products` (`product_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) COMMENT 'Stored products, by shop';


DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`(
	`customer_id` SERIAL,
	`firstname` VARCHAR(40),
	`lastname` VARCHAR (40),
	`email` VARCHAR(30),
	`phone` BIGINT unsigned,
	`district` TINYINT unsigned NOT NULL,
	`address` VARCHAR(100),
	`birthday` DATETIME,
	`password_hash` VARCHAR(255),
	`created_at` timestamp,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`customer_id`),
	FOREIGN KEY (`district`) REFERENCES `districts` (`district_id`) ON DELETE RESTRICT ON UPDATE CASCADE
)COMMENT 'Data of the customers. Can be refactored to store employees data';


DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist`(
	`wishlist_id` SERIAL,
	`customer` BIGINT unsigned NOT NULL,
	`product`   BIGINT unsigned NOT NULL,
	`created_at` timestamp,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`wishlist_id`),
	FOREIGN KEY (`customer`) REFERENCES `customers` (`customer_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY (`product`) REFERENCES `products` (`product_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) COMMENT 'Users wishlist, TRIGGER UPON WISHLIST ITEM COUNT > amount - added to view table name !requested_for_order!';


DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`(
	`order_id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`customer` BIGINT unsigned NOT NULL,
	`shop` TINYINT unsigned NOT NULL,
	`cost` DECIMAL(9,2) DEFAULT 0.00, 
	`created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
	`description` TEXT,
	
	PRIMARY KEY (`order_id`),
	FOREIGN KEY (`customer`) REFERENCES `customers` (`customer_id`),
	FOREIGN KEY (`shop`) REFERENCES `shops` (`shop_id`)
) COMMENT 'Orders. TRIGGER UPON ADDING A NEW ORDER. Creates a 3 lines in ODERS_STEPS table to control the order status';


DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE `orders_products`(
	`order_product_id` SERIAL,
	`order_` BIGINT unsigned NOT NULL,
	`product` BIGINT unsigned NOT NULL,
	`amount` SMALLINT unsigned NOT NULL DEFAULT 1,
	`service` BIGINT unsigned NOT NULL DEFAULT 1, 
	
	PRIMARY KEY (`order_product_id`),
	FOREIGN KEY (`product`) REFERENCES `products` (`product_id`),
	FOREIGN KEY (`order_`) REFERENCES `orders` (`order_id`),
	FOREIGN KEY (`service`) REFERENCES `services` (`service_id`)
);

DROP TABLE IF EXISTS `steps`;
CREATE TABLE `steps`(
	`step_id` TINYINT unsigned NOT NULL AUTO_INCREMENT UNIQUE,
	`step_name` VARCHAR(10),
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`step_id`)
) COMMENT 'Steps which order need to pass untill completed or cancelled';

DROP TABLE IF EXISTS `orders_steps`;
CREATE TABLE `orders_steps`(
	`order_step_id` SERIAL,
	`order` BIGINT unsigned NOT NULL,
	`step` TINYINT unsigned NOT NULL,
	`date_step_beg` timestamp,
	`date_step_end` timestamp NULL DEFAULT NULL,
	
	PRIMARY KEY (`order_step_id`),
	FOREIGN KEY (`order`) REFERENCES `orders` (`order_id`),
	FOREIGN KEY (`step`) REFERENCES `steps` (`step_id`)
);

