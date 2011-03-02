echo "Building a bake-blog in $ROOT";
mkdir --parents ~/public_html/databases/2011-03-02;
cd ~/public_html/databases/2011-03-02;
wget 'http://a.parsons.edu/~loffelmr/blog.tar.gz';
tar xzf blog.tar.gz;
rm blog.tar.gz;
chmod -R 775 blog/;
#NOW RUN THE MYSQL
wget 'http://a.parsons.edu/~loffelmr/blog2.sql';
mysql -u loffelmr -p loffelmr < blog2.sql;
