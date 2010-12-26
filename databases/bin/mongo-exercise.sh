# installs for mongo + google viz exercise


sudo su;

# this requires su
echo "deb http://downloads.mongodb.org/distros/ubuntu 10.10 10gen" >> /etc/apt/sources.list;

aptitude update;

# there were a lot of issues with this installation
# might need a --force or something
aptitude --yes install mongodb-stable;

