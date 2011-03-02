ROOT=/tmp;
echo "Building a bake-blog in $ROOT";
mkdir --parents ~/public_html/databases/2011-03-02$ROOT/baked-blog;
cd ~/public_html/databases/2011-03-02$ROOT/baked-blog;
`wget http://a.parsons.edu/~loffelmr/cake-for-class.tar.gz`;
tar xzf cake-for-class.tar.gz;
