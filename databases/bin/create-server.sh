# some commands from the ec2 cmd line tools
ec2-add-group standalone "Standalone server to serve multiple purposes."

ec2-authorize standalone -p 22; #ssh
ec2-authorize standalone -p 25; #smtp
ec2-authorize standalone -p 3306; #mysql
ec2-authorize standalone -p 443; #ssl
ec2-authorize standalone -p 80; #http



# once server is available
tasksel --install lamp-server

apt-get --yes install gnome-core;

add-apt-repository ppa:freenx-team;

apt-get update;

sed -i 's/maverick/lucid/g' /etc/apt/sources.list.d/freenx-team-ppa-maverick.list;

apt-get --yes install freenx;

wget https://bugs.launchpad.net/freenx-server/+bug/576359/+attachment/1378450/+files/nxsetup.tar.gz;

tar -xvzf nxsetup.tar.gz;

mv nxsetup /usr/lib/nx/nxsetup;

# Here we enable login via a username/password. kind of weak
sudo perl -pi -e '
  s%^(PasswordAuthentication) no%$1 yes\nAllowUsers ubuntu nx%
' /etc/ssh/sshd_config;
sudo /etc/init.d/ssh restart;

sudo su;

# add in the multiverse software repository
echo "deb http://security.ubuntu.com/ubuntu maverick-security multiverse" >> /etc/apt/sources.list;