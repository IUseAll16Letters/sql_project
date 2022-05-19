USE vinylovoe_vino;


INSERT INTO `prod_categories` (`category_name`, `created_at`)
VALUES
	('Пластинки', '2007-07-06'),
	('Техника', '2007-07-06'),
	('Переферия', '2007-07-06'),
	('Услуги', '2018-05-14');


INSERT INTO `products` (`category`, `title`, `product_name`, `summary`, `sku`, `meta`, `price`, `created_at`)
VALUES
	(1, 'Pink Floyd', 'The Dark Side of the Moon', 'Some music album called: The Dark S...', 'RE0673426', '{"band": "Pink Floyd", "genre": "Progressive Rock", "release_year": "1973"}', 5500.00, '2007-07-06'),
	(1, 'Pink Floyd', 'The Division Bell', 'Some music album called: The Divisi...', 'RE0673382', '{"band": "Pink Floyd", "genre": "Progressive Rock", "release_year": "1994"}', 30000.00, '2009-09-03'),
	(1, 'Pink Floyd', 'The Wall', 'Some music album called: The Wall...', 'RE0673306', '{"band": "Pink Floyd", "genre": "Progressive Rock", "release_year": "1973"}', 10000.00, '2009-09-03'),
	(1, 'Led Zeppelin', 'Led Zeppelin IV', 'Some music album called: Led Zeppel...', 'RE0673227', '{"band": "Led Zeppelin", "genre": "Glam Rock", "release_year": "1971"}', 4500.00, '2011-02-10'),
	(1, 'Led Zeppelin', 'Led Zeppelin III', 'Some music album called: Led Zeppel...', 'RE067322', '{"band": "Led Zeppelin", "genre": "Glam Rock", "release_year": "1970"}', 11000.00, '2011-02-10'),
	(1, 'Whitney Houston', 'Whitney Houston', 'Some music album called: Whitney Ho...', 'RE0673220', '{"band": "Whitney Houston", "genre": "Rhythm and blues", "release_year": "1985"}', 7500.00, '2018-05-14'),
	(1, 'Deep Purple', 'Stormbringer', 'Some music album called: Stormbring...', 'RE0673530', '{"band": "Deep Purple", "genre": "Progressive Rock", "release_year": "1974"}', 3000.00, '2009-03-07'),
	(1, 'Deep Purple', 'Perfect Strangers', 'Some music album called: Perfect St...', 'RE0673193', '{"band": "Deep Purple", "genre": "Progressive Rock", "release_year": "1984"}', 5500.00, '2007-07-06'),
	(1, 'The Jimi Hendrix Experience', 'Are You Experienced', 'Some music album called: Are You Ex...', 'RE0673937', '{"band": "The Jimi Hendrix Experience", "genre": "Soft Rock", "release_year": "1967"}', 15000.00, '2011-02-10'),
	(1, 'Marvin Gaye', '"Whats Going On"', 'Some music album called: "Whats Goi...', 'RE0673802', '{"band": "Marvin Gaye", "genre": "Soul", "release_year": "1971"}', 6000.00, '2009-03-07'),
	(1, 'Queen', 'A Night at the Opera', 'Some music album called: A Night at...', 'RE0673853', '{"band": "Queen", "genre": "Glam Rock", "release_year": "1975"}', 25000.00, '2007-07-06'),
	(1, 'Queen', 'News of the World', 'Some music album called: News of th...', 'RE0673256', '{"band": "Queen", "genre": "Glam Rock", "release_year": "1977"}', 10500.00, '2007-07-06'),
	(1, 'A-Ha', 'Lifelines', 'Some music album called: Lifelines...', 'RE0673557', '{"band": "A-Ha", "genre": "Soul", "release_year": "2002"}', 3000.00, '2009-03-07'),
	(1, 'The Rolling Stones', 'Sympathy for the Devil', 'Some music album called: Sympathy f...', 'RE0673260', '{"band": "The Rolling Stones", "genre": "Progressive Rock", "release_year": "1968"}', 14000.00, '2007-07-06'),
	(1, 'The Rolling Stones', 'Paint It Black', 'Some music album called: Paint It B...', 'RE0673897', '{"band": "The Rolling Stones", "genre": "Progressive Rock", "release_year": "1966"}', 6890.00, '2018-05-14'),
	(1, 'Michael Jackson', 'Thriller', 'Some music album called: Thriller...', 'RE0673437', '{"band": "Michael Jackson", "genre": "Rhythm and blues", "release_year": "1982"}', 21000.00, '2018-05-14'),
	(1, 'Michael Jackson', 'Bad', 'Some music album called: Bad...', 'RE0673711', '{"band": "Michael Jackson", "genre": "Rhythm and blues", "release_year": "1987"}', 4000.00, '2009-03-07'),
	(1, "Guns N Roses", 'Appetite for Destruction', 'Some music album called: Appetite f...', 'RE0673365', '{"band": "Guns N Roses", "genre": "Hard Rock", "release_year": "1987"}', 11250.00, '2007-07-06'),
	(1, 'Red Hot Chili Peppers', 'By the Way', 'Some music album called: By the Way...', 'RE0673814', '{"band": "Red Hot Chili Peppers", "genre": "Progressive Rock", "release_year": "2001"}', 3250.00, '2009-09-03'),
	(1, 'Red Hot Chili Peppers', 'Stadium Arcadium', 'Some music album called: Stadium Ar...', 'RE0673801', '{"band": "Red Hot Chili Peppers", "genre": "Progressive Rock", "release_year": "2006"}', 2250.00, '2009-09-03'),
	(1, 'Scorpions', 'Crazy World', 'Some music album called: Crazy Worl...', 'RE0673973', '{"band": "Scorpions", "genre": "Soft Rock", "release_year": "1990"}', 6000.00, '2007-07-06'),
	(1, 'Metallica', 'St. Anger', 'Some music album called: St. Anger...', 'RE0673870', '{"band": "Metallica", "genre": "Thrash Metal", "release_year": "2003"}', 3500.00, '2018-05-14'),
	(1, 'Metallica', '...And Justice for All', 'Some music album called: ...And Jus...', 'RE0673454', '{"band": "Metallica", "genre": "Thrash Metal", "release_year": "1988"}', 7000.00, '2018-05-14'),
	(1, 'AC/DC', 'Back in Black', 'Some music album called: Back in Bl...', 'RE0673865', '{"band": "AC/DC", "genre": "Heavy Metal", "release_year": "1980"}', 17250.00, '2011-02-10'),
	(1, 'AC/DC', 'Highway to Hell', 'Some music album called: Highway to...', 'RE0673750', '{"band": "AC/DC", "genre": "Heavy Metal", "release_year": "1979"}', 27000.00, '2018-05-14'),
	(1, 'Fleetwood Mac', 'Rumours', 'Some music album called: Rumours...', 'RE0673791', '{"band": "Fleetwood Mac", "genre": "Soft Rock", "release_year": "1977"}', 13000.00, '2011-02-10'),
	(1, 'Linkin Park', 'Meteora', 'Some music album called: Meteora...', 'RE0673396', '{"band": "Linkin Park", "genre": "Alternative", "release_year": "2003"}', 3500.00, '2009-09-03'),
	(1, 'Linkin Park', 'Hybrid Theory', 'Some music album called: Hybrid The...', 'RE067362', '{"band": "Linkin Park", "genre": "Alternative", "release_year": "2000"}', 8000.00, '2009-09-03'),
	(2, 'Cambridge Audio', 'Cambridge Audio CXA 81', 'Стереоусилитель Cambridge Audio CXA 81...', 'TE0673342', '{"brand": "Cambridge Audio", "model": "CXA 81"}', 124000.00, '2007-07-06'),
	(2, 'Yamaha', 'Yamaha A-S201', 'Стереоусилитель Yamaha A-S201...', 'TE0673708', '{"brand": "Yamaha", "model": "A-S201"}', 44990.00, '2007-07-06'),
	(2, 'Yamaha', 'Yamaha A-S501', 'Стереоусилитель Yamaha A-S501...', 'TE0673889', '{"brand": "Yamaha", "model": "A-S501"}', 79990.00, '2018-05-14'),
	(2, 'Audio-Technica', 'Audio-Technica AT-LP140XP', 'Виниловый проигрыватель Audio-Technica A...', 'TE0673401', '{"brand": "Audio-Technica", "model": "AT-LP140XP"}', 69069.00, '2007-07-06'),
	(2, 'Pro-Ject', 'Pro-Ject 2-Xperience Primary', 'Виниловый проигрыватель Pro-Ject 2-Xperi...', 'TE067341', '{"brand": "Pro-Ject", "model": "2-Xperience Primary"}', 67580.00, '2007-07-06'),
	(2, 'Audio-Technica', 'Audio-Technica AT-LP3', 'Виниловый проигрыватель Audio-Technica A...', 'TE0673150', '{"brand": "Audio-Technica", "model": "AT-LP3"}', 43989.00, '2009-09-03'),
	(2, 'Audio-Technica', 'Audio-Technica AT-LPW30TK', 'Виниловый проигрыватель Audio-Technica A...', 'TE0673147', '{"brand": "Audio-Technica", "model": "AT-LPW30TK"}', 38000.00, '2011-02-10'),
	(2, 'Audio-Technica', 'Audio-Technica AT-OC9XSH', 'Головка звукоснимателя Audio-Technica AT...', 'TE067370', '{"brand": "Audio-Technica", "model": "AT-OC9XSH"}', 65090.00, '2007-07-06'),
	(2, 'Goldring', 'Goldring 1012 GX', 'Головка звукоснимателя Goldring 1012 GX...', 'TE0673828', '{"brand": "Goldring", "model": "1012 GX"}', 57000.00, '2009-03-07'),
	(2, 'Sumiko', 'Sumiko Rainier', 'Головка звукоснимателя Sumiko Rainier...', 'TE0673677', '{"brand": "Sumiko", "model": "Rainier"}', 25500.00, '2009-03-07'),
	(2, 'Audio-Technica', 'Audio-Technica VMN50SH', 'Игла для звукоснимателя Audio-Technica V...', 'TE0673822', '{"brand": "Audio-Technica", "model": "VMN50SH"}', 31339.00, '2007-07-06'),
	(2, 'Polc', 'Polk Audio Monitor XT60', 'Акустическая система Polk Audio Monitor ...', 'TE0673558', '{"brand": "Polc", "model": "Polk Audio Monitor XT60"}', 96187.00, '2011-02-10'),
	(2, 'ELAC', 'ELAC Debut F6.2', 'Акустическая система ELAC Debut F6.2...', 'TE0673572', '{"brand": "ELAC", "model": "Debut F6.2"}', 88880.00, '2011-02-10');


INSERT INTO `services`(`service_name`, `created_at`)
VALUES
	('Доставка', '2018-05-14'),
	('Сборка системы', '2018-05-14'),
	('Обслуживание и ремонт', '2018-05-14');
	

INSERT INTO `districts` (`district_name`, `created_at`)
VALUES
	('Василеостровский', '2007-07-06'),
	('Центральный', '2007-07-06'),
	('Адмиралтейский', '2007-07-06'),
	('Крестовский остров', '2007-07-06'),
	('Каменный остров', '2007-07-06'),
	('допустим Север', '2007-07-06'),
	('допустим Юг', '2007-07-06');


INSERT INTO `shops` (`shop_name`, `district`, `address`, `created_at`)
VALUES
	('Винил Винилыч', 1, 'Где-то как-будто бы нигде', '2007-07-06'),
	('Audio Mystery', 2, 'Бульвар Каштановый, 15', '2009-03-07'),
	('Legendary Sound', 6, 'Улица им. Белого кота', '2018-05-14');


INSERT INTO `inventory`(`shop`, `product`, `amount`, `created_at`)
VALUES
	(1, 1, 6, '2007-07-06'),
	(1, 8, 6, '2007-07-06'),
	(1, 11, 3, '2007-07-06'),
	(1, 12, 4, '2007-07-06'),
	(1, 14, 4, '2007-07-06'),
	(1, 18, 4, '2007-07-06'),
	(1 , 21, 4, '2007-07-06'),
	(1 , 29, 1, '2007-07-06'),
	(1 , 30, 3, '2007-07-06'),
	(1 , 32, 3, '2007-07-06'),
	(1 , 33, 3, '2007-07-06'),
	(1 , 36, 3, '2007-07-06'),
	(1 , 39, 3, '2007-07-06'),
	(2 , 7, 6, '2009-03-07'),
	(2 , 10, 4, '2009-03-07'),
	(2 , 13, 6, '2009-03-07'),
	(2 , 17, 6, '2009-03-07'),
	(2 , 37, 3, '2009-03-07'),
	(2 , 38, 3, '2009-03-07'),
	(2 , 2, 3, '2009-03-07'),
	(2 , 3, 4, '2009-03-07'),
	(2 , 19, 6, '2009-03-07'),
	(2 , 20, 6, '2009-03-07'),
	(2 , 27, 6, '2009-03-07'),
	(2 , 28, 4, '2009-03-07'),
	(2 , 34, 3, '2009-03-07'),
	(1 , 4, 6, '2011-02-10'),
	(1 , 5, 4, '2011-02-10'),
	(1 , 9, 4, '2011-02-10'),
	(1 , 24, 4, '2011-02-10'),
	(1 , 26, 4, '2011-02-10'),
	(1 , 35, 3, '2011-02-10'),
	(2 , 40, 1, '2011-02-10'),
	(2 , 41, 1, '2011-02-10'),
	(3 , 6, 4, '2018-05-14'),
	(3 , 15, 4, '2018-05-14'),
	(3 , 16, 3, '2018-05-14'),
	(3 , 22, 6, '2018-05-14'),
	(3 , 23, 4, '2018-05-14'),
	(3 , 25, 3, '2018-05-14'),
	(3 , 31, 1, '2018-05-14');


INSERT INTO `steps` (`step_name`)
VALUES
	('Оплата'),
	('Собираем'),
	('Доставка');


INSERT INTO `customers` (`firstname`, `lastname`, `email`, `phone`, `district`, `address`, `birthday`, `password_hash`, `created_at`)
VALUES
	('Ааарон', 'Соркин', 'heuqdlzuvf.qgj@ne_ya.ru', 724280953985, 5, 'где-то поблизости', '1977-09-25', 'c31fa6417d1880494785b573ee3e2ee5bc09cf12f0b1588aaa250d51ee19d349', '2007-07-06'),
	('Григорий', 'Лившиц', 'pcxhyevyqi.jjo@mail.ru', 778229446259, 7, 'где-то поблизости', '1962-01-11', 'c3d13492d0421e10a4136d292028973295075b9f70c25f24e27620835eb37661', '2007-07-06'),
	('Герасим', 'Авакумов', 'ambtcfpxaj.cvv@ya.ru', 769716253419, 5, 'где-то далековато', '1991-02-22', '130cbbc22fa28a16d3cb775a013bab3d95a3cea09acbe1b680527fce7336389c', '2007-07-06'),
	('Михаил', 'Петров', 'iikbgqlkie.dbm@gmail.ru', 746395946626, 3, 'где-то далековато', '1970-01-27', '7bc7a8cb18b29b344bb88f1a3c8ee81555430e4f28aad3441c15d54951d5b92d', '2007-07-06'),
	('Петр', 'Михайлов', 'cesjtcpcyw.aed@gmail.ru', 779484751872, 2, 'где-то далековато', '1998-01-07', '95e536159a5cf950c7fae252584ef7f1afcd29d4f3f4d82c71889c020122edca', '2007-07-06'),
	('Сергей', 'Петров', 'lznulbowcy.sjy@gmail.ru', 770337654955, 5, 'посерединевцентре', '1985-06-27', 'f68cf660a3b67b14fe25070606277df7e90cf6321f4aece65a8d198b28bb21e3', '2007-07-06'),
	('Мария', 'Грушильникова', 'gailitxwnh.duc@gmail.ru', 705420676747, 6, 'где-то далековато', '1970-02-04', '17ef3b799178b4a14d1f268f90f5e756e5a122a0b1ca3c0bb43bf162836f28e6', '2007-07-06'),
	('Ибрагим', 'Нечипарукашвилли', 'nilhpsgobi.wgn@gmail.ru', 778534990331, 3, 'посерединевцентре', '1969-08-21', '674bfb5a3a6b18d42e78098697b1686664e79f32824eed7d77d60533818648ca', '2007-07-06'),
	('Без', 'Имени', 'bbversncpu.jch@ne_ya.ru', 744951514331, 4, 'у черта на рогах', '1992-07-21', 'a3ec32c7ec3af9080ef741cb135b05036f5cbc531cf7f5589ee85eb3c96e3a20', '2007-07-06'),
	('Гаадя', 'Петрович', 'hiqmnvjmxd.hkn@gmail.ru', 785993344340, 1, 'где-то поблизости', '1965-11-17', 'ff2e0590ec220b7fb5df64467ec25181d0bf4c4b78324d7f8ffac70518b1fa9d', '2007-07-06');
	

INSERT INTO `orders` (`customer`, `shop`, `created_at`)
VALUES
	(9, 1, '2007-08-06'),  # 1
	(5, 1, '2007-09-24'), 
	(4, 1, '2007-10-08'),
	(4, 1, '2007-10-09'), 
	(5, 1, '2007-10-11'),  # 5
	(10, 1, '2007-10-22'),
	(2, 1, '2008-03-05'), 
	(1, 1, '2008-07-16'),
	(10, 1, '2008-11-22'),
	(8, 1, '2009-03-23'), # 10
	(2, 1, '2009-04-19'), 
	(8, 2, '2009-07-06'), 
	(1, 2, '2009-12-20'),
	(9, 2, '2011-02-22'),
	(3, 1, '2011-03-12'), 
	(4, 2, '2011-03-23'), 
	(9, 1, '2011-06-22'),
	(10, 1, '2018-02-13'),
	(1, 2, '2018-02-17'), 
	(2, 1, '2018-06-13')
;


INSERT INTO `orders_products` (`order_`, `product`, `amount`, `service`)
VALUES
	(1, 32, 1, 1), 
	(1, 30, 1, 1), 
	(1, 1, 1, 1), 
	(1, 12, 1, 1), 
	(2, 14, 1, 1), 
	(2, 18, 1, 1), 
	(3, 33, 1, 1), 
	(3, 36, 1, 1), 
	(3, 39, 1, 1), 
	(4, 8, 1, 1), 
	(4, 33, 1, 1), 
	(5, 30, 1, 1), 
	(6, 1, 2, 1),
	(7, 7, 2, 1),
	(8, 10, 2, 1),
	(8, 29, 1, 1),
	(9, 37, 1, 1),
	(10, 17, 2, 1),
	(11, 10, 2, 1),
	(12, 38, 1, 1),
	(12, 19, 1, 1),
	(13, 24, 1, 1),
	(13, 35, 3, 1),
	(14, 19, 1, 1),
	(15, 40, 1, 1),
	(16, 35, 2, 1),
	(16, 19, 2, 1),
	(17, 15, 2, 1),
	(18, 25, 1, 1),
	(19, 23, 1, 1),
	(19, 28, 1, 1),
	(20, 16, 2, 1),
	(20, 25, 1, 1)
	; 
	

INSERT INTO `wishlist` (`customer`, `product`, `created_at`)
VALUES
	(3, 35, '2007-07-08'), 
	(5, 5, '2007-07-26'), 
	(7, 7, '2007-11-27'), 
	(8, 19, '2007-09-16'), 
	(1, 17, '2008-07-15'), 
	(7, 9, '2008-09-17'), 
	(6, 19, '2008-12-21'), 
	(7, 2, '2009-08-22'), 
	(7, 37, '2009-12-09'), 
	(8, 37, '2009-11-24'), 
	(2, 27, '2010-08-06'), 
	(8, 12, '2010-08-16'), 
	(1, 4, '2012-11-06'), 
	(3, 36, '2012-08-13'), 
	(2, 39, '2013-10-12'), 
	(2, 37, '2013-10-25'), 
	(7, 35, '2013-12-15'), 
	(2, 1, '2014-09-22'), 
	(3, 37, '2014-12-16'), 
	(8, 20, '2014-11-13'), 
	(2, 38, '2014-12-11'), 
	(3, 19, '2014-10-06'), 
	(4, 19, '2014-08-07'), 
	(2, 18, '2014-08-19'), 
	(1, 13, '2016-12-07'), 
	(3, 36, '2016-07-18'), 
	(4, 29, '2016-07-15'), 
	(3, 40, '2016-11-17'), 
	(4, 35, '2016-10-13'), 
	(2, 35, '2017-10-11'), 
	(1, 35, '2017-07-28'), 
	(1, 29, '2017-09-26'), 
	(6, 19, '2017-10-22'),
	(4, 19, '2017-10-22'),
	(3, 19, '2017-10-22'),
	(1, 19, '2017-10-22');


# Большой блок, который рандомно выбивает длительности этапов
UPDATE `orders_steps` os, `orders` o
SET 
	os.date_step_beg = o.created_at,
	os.date_step_end = DATE_ADD(o.created_at, INTERVAL ROUND(RAND() * 720) MINUTE)
WHERE
	os.step = 1 AND o.order_id = os.order;

UPDATE `orders_steps` as os, (select order_step_id, date_step_beg dsb, `order`, step, LAG(date_step_end) OVER(order by order_step_id asc) as pd FROM orders_steps) as `temp_1`
SET
	os.date_step_beg = DATE_ADD(temp_1.pd, INTERVAL ROUND(RAND() * 2880) MINUTE)
WHERE
	os.step = 2 AND os.`order_step_id` = temp_1.`order_step_id`;

UPDATE `orders_steps` os
SET 
	os.date_step_end = DATE_ADD(os.date_step_beg, INTERVAL ROUND(RAND() * 360) MINUTE)
WHERE
	os.step = 2;
	
UPDATE `orders_steps` as os, (select order_step_id, date_step_beg dsb, `order`, step, LAG(date_step_end) OVER(order by order_step_id asc) as pd FROM orders_steps) as `temp_1`
SET
	os.date_step_beg = DATE_ADD(temp_1.pd, INTERVAL ROUND(RAND() * 1440) MINUTE)
WHERE
	os.step = 3 AND os.`order_step_id` = temp_1.`order_step_id`;

UPDATE `orders_steps` os
SET 
	os.date_step_end = DATE_ADD(os.date_step_beg, INTERVAL ROUND(RAND() * 1440 * 5) MINUTE)
WHERE
	os.step = 3;

	