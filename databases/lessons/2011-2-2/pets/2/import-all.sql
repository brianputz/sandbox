INSERT INTO menagerie_pets (id, name, owner, species, sex, birth, death) VALUES 
(1,'Fluffy','Harold',1,'f','2003-02-04',NULL),
(2,'Claws','Gwen',1,'m','2004-03-17',NULL),
(3,'Spiff','Gwen',1,'m','2010-11-17',NULL),
(4,'Buffy','Harold',1,'f','1999-05-13',NULL),
(5,'Fang','Benny',2,'m','2000-08-27','2005-07-29'),
(6,'Bowser','Diane',2,'m','2010-08-31',NULL),
(7,'Chirpy','Gwen',3,'f','2008-09-11',NULL),
(8,'Whistler','Gwen',3,NULL,'2007-12-09',NULL),
(9,'Slim','Benny',4,'m','2006-04-29',NULL);

INSERT INTO menagerie_events (pet,date,type,remark) VALUES
(1,'2005-05-15','litter','4 kittens, 3 female, 1 male'),
(4,'2003-06-23','litter','5 puppies, 2 female, 3 male'),
(4,'2004-06-19','litter','3 puppies, 3 female'),
(7,'1999-03-21','vet','needed beak straightened'),
(9,'2007-08-03','vet','broken rib'),
(6,'2011-10-12','kennel','2 days'),
(5,'2011-10-12','kennel','3 days'),
(5,'2008-08-28','birthday','Gave him a new chew toy'),
(2,'2008-03-17','birthday','Gave him a new flea collar'),
(8,'2008-12-09','birthday','First birthday');

INSERT INTO menagerie_species (id,name) VALUES 
(1,'cat'),
(2,'dog'),
(3,'bird'),
(4,'snake');
