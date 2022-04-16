
DROP DATABASE IF EXISTS `vinylovoe_vino`;
CREATE DATABASE `vinylovoe_vino`;


USE `vinylovoe_vino`;


DROP TABLE IF EXISTS `prod_categories`;
CREATE TABLE `prod_categories`(
	`category_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`category_name` VARCHAR(30),
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`category_id`)
);


DROP TABLE IF EXISTS `artists`;
CREATE TABLE `artists`(
	`artist_id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`artist_name` VARCHAR(255) UNIQUE,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`artist_id`)
);


DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres`(
	`genre_id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`genre_name` VARCHAR(100) UNIQUE,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`genre_id`)
);


DROP TABLE IF EXISTS `records`;
CREATE TABLE `records`(
	`record_id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`artist` BIGINT unsigned NOT NULL,
	`record_name` VARCHAR(255) DEFAULT NULL,
	`genre` BIGINT unsigned NOT NULL,
	`release_date` DATE CHECK (release_date >= '1860-01-01'),
	`record_price` DECIMAL(6,2) unsigned NOT NULL DEFAULT 0.00, 
	
	PRIMARY KEY (`record_id`),
	FOREIGN KEY (`artist`) REFERENCES `artists` (`artist_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN KEY (`genre`) REFERENCES `genres` (`genre_id`) ON DELETE RESTRICT ON UPDATE CASCADE
);


DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts`(
	`district_id` TINYINT unsigned NOT NULL AUTO_INCREMENT,
	`district_name` VARCHAR(50),
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`district_id`)
);


DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops`(
	`shop_id` TINYINT unsigned NOT NULL AUTO_INCREMENT,
	`shop_name` VARCHAR(50),
	`district` TINYINT unsigned NOT NULL,
	`address` VARCHAR(70),
	`created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`shop_id`),
	FOREIGN KEY (`district`) REFERENCES `districts` (`district_id`) ON DELETE RESTRICT ON UPDATE CASCADE
);


DROP TABLE IF EXISTS `tech_category`;
CREATE TABLE `tech_category`(
	`tech_cat_id` TINYINT unsigned NOT NULL AUTO_INCREMENT,
	`cat_name` VARCHAR(50),
	`created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`tech_cat_id`)
);


DROP TABLE IF EXISTS `technics`;
CREATE TABLE `technics`(
	`technic_id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`technic_cat` TINYINT unsigned NOT NULL,
	`technic_name` VARCHAR(255) DEFAULT NULL,
	`technic_price` DECIMAL(6,2) unsigned NOT NULL DEFAULT 0.00,
	`created-at` timestamp,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`technic_id`),
	FOREIGN KEY (`technic_cat`) REFERENCES `tech_category` (`tech_cat_id`) ON DELETE RESTRICT ON UPDATE CASCADE 
	
);


DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`(
	`inventory_id` SERIAL,
	`shop` TINYINT unsigned NOT NULL,
	`category` TINYINT unsigned NOT NULL,
	`product` BIGINT unsigned NOT NULL,
	`amount` INT unsigned NOT NULL,
	`created_at` timestamp,
	`last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`inventory_id`),
	FOREIGN KEY (`shop`)     REFERENCES `shops` (`shop_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN KEY (`category`) REFERENCES `prod_categories` (`category_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN KEY (`product`)  REFERENCES `records` (`record_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN KEY (`product`)  REFERENCES `technics` (`technic_id`) ON DELETE RESTRICT ON UPDATE CASCADE
);


DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`(
	`customer_id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
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
);


DROP TABLE IF EXISTS `wishlist_records`;
CREATE TABLE `wishlist_records`(
	`customer` BIGINT unsigned NOT NULL,
	`record`   BIGINT unsigned NOT NULL,
	`created_at` timestamp,
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`customer`, `record`),
	FOREIGN KEY (`customer`) REFERENCES `customers` (`customer_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN KEY (`record`) REFERENCES `records` (`record_id`) ON DELETE RESTRICT ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`(
	`order_id` BIGINT unsigned NOT NULL AUTO_INCREMENT,
	`customer` BIGINT unsigned NOT NULL,
	`shop` TINYINT unsigned NOT NULL,
	`created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
	`description` TEXT,
	
	PRIMARY KEY (`order_id`),
	FOREIGN KEY (`customer`) REFERENCES `customers` (`customer_id`),
	FOREIGN KEY (`shop`) REFERENCES `shops` (`shop_id`)
);


DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE `orders_products`(
	`order_product_id` SERIAL,
	`order` BIGINT unsigned NOT NULL,
	`product` BIGINT unsigned NOT NULL,
	`product_category` TINYINT UNSIGNED NOT NULL,
	
	PRIMARY KEY (`order_product_id`),
	FOREIGN KEY (`product`) REFERENCES `records` (`record_id`),
	FOREIGN KEY (`product`) REFERENCES `technics` (`technic_id`),
	FOREIGN KEY (`order`) REFERENCES `orders` (`order_id`),
	FOREIGN KEY (`product_category`) REFERENCES `prod_categories` (`category_id`),
	
	INDEX idx_prod_cat (`product`, `product_category`)
);

DROP TABLE IF EXISTS `steps`;
CREATE TABLE `steps`(
	`step_id` TINYINT unsigned NOT NULL AUTO_INCREMENT,
	`status_name` VARCHAR(10),
	`last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`step_id`)
);

DROP TABLE IF EXISTS `orders_steps`;
CREATE TABLE `orders_steps`(
	`order_step_id` SERIAL,
	`order` BIGINT unsigned NOT NULL,
	`step` TINYINT unsigned NOT NULL,
	`date_step_beg` timestamp, 
	`date_step_end` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (`order_step_id`),
	FOREIGN KEY (`order`) REFERENCES `orders` (`order_id`),
	FOREIGN KEY (`step`) REFERENCES `steps` (`step_id`)

);


INSERT INTO `prod_categories` (`category_name`)
VALUES
	('Пластинки'),
	('Техника'),
	('Переферия'),
	('Услуги')
;
