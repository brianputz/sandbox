#!/bin/bash

# this is a bash shell script. for more info about shell scripts visit: 
# 	http://tldp.org/LDP/abs/html/
#
cd ~;

mysql -u loffelmr -p < ~/public_html/sandbox/databases/lessons/2011-2-2/pets/create-all.sql;
