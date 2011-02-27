USE loffelmr;

DROP TABLE IF EXISTS store_boots;
DROP TABLE IF EXISTS store_colors;
DROP TABLE IF EXISTS store_sizes;

/* BOOTS */
CREATE TABLE store_boots (
	name 	VARCHAR(50),
	id 		INT UNSIGNED NOT NULL AUTO_INCREMENT KEY
);

CREATE TABLE store_colors (
	name 	VARCHAR(50),
	id 		INT UNSIGNED NOT NULL AUTO_INCREMENT KEY	
);

CREATE TABLE store_sizes (
	name 	VARCHAR(50),
	id 		INT UNSIGNED NOT NULL AUTO_INCREMENT KEY
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

