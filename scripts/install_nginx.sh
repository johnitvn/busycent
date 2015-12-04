sudo yum install epel-release -y
sudo yum install nginx wget -y
sudo systemctl start nginx
sudo systemctl enable nginx
rm -rf /etc/nginx/conf.d
mkdir /etc/nginx/conf.d
rm -rf /etc/nginx/default.d
rm -rf /etc/nginx/nginx.conf
rm -rf /etc/nginx/sites-avaiable
mkdir /etc/nginx/sites-avaiable
rm -rf /etc/nginx/sites-enable
mkdir /etc/nginx/sites-enable
wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/a803fc411c7a520aa669af99db406539f3fb3a98/block.conf -O /etc/nginx/conf.d/block.conf
wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/a803fc411c7a520aa669af99db406539f3fb3a98/cache.conf -O /etc/nginx/conf.d/cache.conf
wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/a803fc411c7a520aa669af99db406539f3fb3a98/gzip.conf -O /etc/nginx/conf.d/gzip.conf
wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/d4c42ff850411700a19bfb69d42b4d36fab8d5c8/nginx.conf -O /etc/nginx/nginx.conf

