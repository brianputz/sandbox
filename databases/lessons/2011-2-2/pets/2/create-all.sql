# drop the event table if it exists, then recreate it

DROP TABLE IF EXISTS menagerie_events;

CREATE TABLE menagerie_events
(
	pet		INT UNSIGNED NOT NULL,
	date   	DATE,
	type   	VARCHAR(15),
	remark 	VARCHAR(255),
	id 		INT UNSIGNED NOT NULL AUTO_INCREMENT KEY
);

# drop the pet table if it exists, then recreate it

DROP TABLE IF EXISTS menagerie_pets;

CREATE TABLE menagerie_pets
(
	name  	VARCHAR(20),
	owner  	VARCHAR(20),
	species	INT, /* refers to an id from the menagerie_species table */
	sex     CHAR(1),
	birth   DATE,
	death   DATE,
	id 		INT UNSIGNED NOT NULL AUTO_INCREMENT KEY
);

DROP TABLE IF EXISTS menagerie_species;

CREATE TABLE menagerie_species
(
	name	VARCHAR(20),
	id 		INT UNSIGNED NOT NULL AUTO_INCREMENT KEY
);