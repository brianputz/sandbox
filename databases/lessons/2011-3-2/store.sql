USE loffelmr;

DROP TABLE IF EXISTS store_boots;
DROP TABLE IF EXISTS store_colors;
DROP TABLE IF EXISTS store_sizes;

/* BOOTS */
CREATE TABLE store_boots (
	id 			INT UNSIGNED NOT NULL AUTO_INCREMENT KEY,
	name 		VARCHAR(50),
	sku			INT,
	height		VARCHAR(15),
	lining		VARCHAR(15),
	colors		VARCHAR(255),
	price		DECIMAL(7,2), /* 7 digits, maximum of 2 digits past decimal point */
	features	VARCHAR(255)
);

CREATE TABLE store_colors (
	id 		INT UNSIGNED NOT NULL AUTO_INCREMENT KEY,
	name 	VARCHAR(50),
	value	VARCHAR(2)
);

CREATE TABLE store_boots_sizes (
	id 			INT UNSIGNED NOT NULL AUTO_INCREMENT KEY,
	boot_id		INT,
	size_id		INT
);

CREATE TABLE store_sizes (
	id 		INT UNSIGNED NOT NULL AUTO_INCREMENT KEY,
	name 	VARCHAR(50)
);

INSERT INTO store_boots (id,name)
VALUES 
('7177382', 'Caterpillar Tradesman Work Boot'),
('7269643', 'Caterpillar Logger Boot'),
('7141832', 'Chippewa 17" Engineer Boot'),
('7141833', 'Chippewa 17" Snakeproof Boot'),
('7173656', 'Chippewa 11" Engineer Boot'),
('7141922', 'Chippewa Harness Boot'),
('7141730', 'Danner Foreman Pro Work Boot'),
('7257914', 'Danner Grouse GTX Boot');

INSERT INTO store_colors (id,name,value)
VALUES
(1,'Black Oil-tanned','bk'),
(2,'Black Polishable','br'),
(3,'Black','bk'),
(4,'Crazy Horse','br'),
(5,'Honey','hy'),
(6,'Peanut','sd'),
(7,'Brown','rw'),
(8,'Russet','br'),
(9,'Brown','br');

INSERT INTO store_sizes (id, name, value)
VALUES
(1,'9d','9 D'),
(2,'9ee','9 EE'),
(3,'95d','9\u00BD D'),
(4,'95ee','9\u00BD EE'),
(5,'95eee','9\u00BD EEE'),
(6,'10ee','10 EE'),
(7,'10eee','10 EEE'),
(8,'13e','13 E');

/*
INSERT INTO store_boots_sizes (boot_id,size_id)
VALUES
(),
(),
(),
(),
(),
(),
(),
(),
();
*/