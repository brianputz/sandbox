# make a trash folder
mkdir ~/Trash;

# download world database zip file
# wget http://downloads.mysql.com/docs/world_innodb.sql.zip;

# download sakila database zip
# wget http://downloads.mysql.com/docs/sakila-db.zip;

# move to home directory
cd ~;

# download menagerie database zip
wget http://downloads.mysql.com/docs/menagerie-db.zip;

# make dir structure
mkdir --parents ~/databases/lessons/2011-2-2/menagerie;

# unzip menagerie
unzip ~/menagerie-db.zip -d ~/Databases/Lessons/2011-2-2/menagerie;

# put the zip in the trash
mv ~/menagerie-db.zip ~/.Trash;