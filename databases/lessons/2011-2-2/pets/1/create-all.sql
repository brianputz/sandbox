# drop the event table if it exists, then recreate it

DROP TABLE IF EXISTS menagerie_events;

CREATE TABLE menagerie_events
(
  name   VARCHAR(20),
  date   DATE,
  type   VARCHAR(15),
  remark VARCHAR(255)
);

# drop the pet table if it exists, then recreate it

DROP TABLE IF EXISTS menagerie_pets;

CREATE TABLE menagerie_pets
(
  name    VARCHAR(20),
  owner   VARCHAR(20),
  species VARCHAR(20),
  sex     CHAR(1),
  birth   DATE,
  death   DATE
);