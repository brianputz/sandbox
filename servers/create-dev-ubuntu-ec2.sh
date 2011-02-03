# run sudo su before running this script
#
# roll out a new ec2 server with everything i like to have for development
#
# WANT TO HAVE
#	Latest Updates from Ubuntu
#	LAMP
#	phpMyAdmin
#	Apache Modules (rewrite, ssl)
#	Script - New http: Site
#	Script - New https: Site
#	Script - New http: Cake Site
#	Script - New https: Cake Site
#	Hudson
#	FreeNx
#	GUI
#	My Fav .bashrc
#	My Fav .nanorc
#	My Fav Scripts: srm, la, ll
#	Wine
#	Notepad++
# 	MongoDB
#	Jungledisk
#	Set Time Zone
#	Scalr?
#	
#	
# HAVE ALREADY
#	
#
# setup ssl on latest ubuntu
# this does not yet handle mysql setup. creating a non-root user for mysql, for example
# 
# some of these commands are untested, do not expect this to run
# 
# this is missing email server installation
#
# TODO: setup S3/Jungledisk for easy file operations
# TODO: put cake console on the path
# TODO: set the correct time-zone on the server
# TODO: add ubuntu user to the www-data group and chmod the files in app to let group r+w
# TODO: if we're putting the www.sdcweb.org site on the same server, script out that setup as well
# TODO: create /etc/.nanorc with the following line in it: set tabsize 4



# check that current user has root access
if [ `id -u` -ne 0]
then
    echo "Must be root"
    exit 1
fi

# update the apt-get database
add-apt-repository "deb http://archive.canonical.com/ lucid partner"

apt-get update

apt-get install unzip

apt-get install imagemagick

# not sure about the syntax on this command
tasksel install lamp

mkdir /var/www/www.directory.sdcweb.org

mkdir /var/www/www.directory.sdcweb.org/htdocs

mkdir /var/www/www.directory.sdcweb.org/logs

chown -R www-data:www-data /var/www/www.directory.sdcweb.org

service apache2 stop

# pull the SSL VirtualHost settings into the proper directory
cd /etc/apache2/sites-available
wget http://sdcweb.org/new-site/www.directory.sdcweb.org

# enable the ssl module
a2enmod ssl

# enable mod rewrite for cake-php support
a2enmod rewrite

# enable caching/expiration module
a2enmod expires

# enable the ssl site
a2ensite www.directory.sdcweb.org

# copy the placeholder start page
cd /var/www/www.directory.sdcweb.org/htdocs
wget http://sdcweb.org/new-site/index.html

service apache2 start

# at this point the server should be working. 
# https://184.73.195.31


# now we'll get cake and unzip it
cd /var/www/www.directory.sdcweb.org/htdocs
# wget http://sdcweb.org/new-site/cakephp-1.2.6.zip
# LETS START USING THE 1.3 RC version 4/22/2010
wget http://github.com/cakephp/cakephp1x/zipball/1.3.0-RC4
unzip cakephp-1.2.6.zip

# install php cli support for cake console
apt-get install php-cli

# enable locate
/etc/cron.daily/mlocate;

# THIS SEEMS BROKEN STILL...THE PATHING STUFF IN CAKE CONSOLE IS COMPLICATED
# TODO: put cake console on the path
# su
# export PATH=$PATH:/var/www/www.directory.sdcweb.org/htdocs/cake/console/cake
# note this doesn't really seem to work

# TODO: set the correct time-zone on the server

# TODO: add ubuntu user to the www-data group and chmod the files in app to let group r+w
usermod -a -G www-data ubuntu;
chmod -R g+rw /var/www/www.directory.sdcweb.org/htdocs/app;

# install a "safe remove" script on all servers
mkdir /home/ubuntu/.Trash;
mkdir /home/ubuntu/bin;
echo "alias src='~/bin/srm'" >> /home/ubuntu/.bashrc;
cd /home/ubuntu/bin;
wget --quiet http://loffelmacher.com/files/sdc/rm.sh;
chmod 750 ./rm.sh

# install s3cmd?? or jungledisk?
# cd ~;
# wget --quiet http://downloads.jungledisk.com/jungledisk/junglediskserver306.tar.gz;

sudo apt-get install php-pear

sudo pear channel-discover pear.phpunit.de

sudo pear install phpunit/PHPUnit


