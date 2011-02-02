# sample queries 2

# first select all pets, notice species is now a number
SELECT * FROM menagerie_pets;

# pull in species using a join
SELECT p.name, s.name FROM menagerie_pets AS p INNER JOIN menagerie_species AS s ON p.species=s.id;

# Demo a select distinct