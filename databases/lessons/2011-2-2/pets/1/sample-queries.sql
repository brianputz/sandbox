# sample queries

# This shows all cats, change it to show all dogs
SELECT * FROM menagerie_pets WHERE species='cat';

# Lets look at all old dogs
SELECT * FROM menagerie_pets WHERE species='dog' AND birth<'2005-3-31';

# Write SQL to show old dogs who are no longer with us
SELECT * FROM menagerie_pets WHERE species='dog' AND birth<'2005-3-31' AND death IS NULL;

# Try one which shows us kittens younger than 

# Demonstrate IN. Note that the check is NOT case-sensitive
SELECT * FROM menagerie_pets WHERE species IN ('BIRD','snake');

# Use LIKE to check for string matching. You can also use REGEXP()
SELECT * FROM menagerie_pets WHERE name LIKE 'f%';

# Now we will demonstrate what you can do in the SELECT clause

# Get the Owners and Pets name for all dogs

# Print the name and birth for baby pets (cats younger than 1 year old)
SELECT name, birth FROM menagerie_pets WHERE DATE_ADD(birth, INTERVAL 1 YEAR) > NOW();

# Get all the pets who are younger than Claws using a subquery
SELECT name, birth FROM menagerie_pets WHERE birth > (SELECT birth FROM menagerie_pets WHERE name='Claws');

# Something a little different, show names for all cats and dogs using a subquery
SELECT name FROM menagerie_pets WHERE species IN (SELECT species FROM menagerie_pets WHERE species!='bird' AND species!='snake');