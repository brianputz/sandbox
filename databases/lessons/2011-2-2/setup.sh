#!/bin/bash

# this is a bash shell script. for more info about shell scripts visit: 
# 	http://tldp.org/LDP/abs/html/
#

# setup

# make git ignore file mode
git config core.filemode false;

# make a trash folder
mkdir ~/Trash;

# the other 3 sample databases should probably be taken from my website
# they won't run out-of-the box on a.parsons.edu so I should tweak them
# and offer them up from my own website

# download world database zip file
# wget http://downloads.mysql.com/docs/world_innodb.sql.zip;
# wget http://a.parsons.edu/~loffelmr/database/files/

# download sakila database zip
# wget http://downloads.mysql.com/docs/sakila-db.zip;
# wget http://a.parsons.edu/~loffelmr/database/files/

# download the launchpage employee db
# wget http://launchpad.net/test-db/employees-db-1/1.0.6/+download/employees_db-dump-files-1.0.5.tar.bz2;
# wget http://a.parsons.edu/~loffelmr/database/files/

# move to home directory
cd ~;

# download menagerie database zip
wget http://downloads.mysql.com/docs/menagerie-db.zip;

# make dir structure
mkdir --parents ~/public_html/databases/lessons/2011-2-2;

# unzip menagerie
unzip ~/menagerie-db.zip -d ~/public_html/databases/lessons/2011-2-2;

# put the zip in the trash
mv ~/menagerie-db.zip ~/.Trash;