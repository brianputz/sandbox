# drop the event table if it exists, then recreate it

DROP TABLE IF EXISTS event;

CREATE TABLE event
(
  name   VARCHAR(20),
  date   DATE,
  type   VARCHAR(15),
  remark VARCHAR(255)
);

# drop the pet table if it exists, then recreate it

DROP TABLE IF EXISTS pet;

CREATE TABLE pet
(
  name    VARCHAR(20),
  owner   VARCHAR(20),
  species VARCHAR(20),
  sex     CHAR(1),
  birth   DATE,
  death   DATE
);

# empty the table
DELETE FROM pet;

# load new records into it
LOAD DATA LOCAL INFILE 'pet.txt' INTO TABLE pet;

# empty the table
DELETE FROM event;

# load new records into it
LOAD DATA LOCAL INFILE 'event.txt' INTO TABLE event;