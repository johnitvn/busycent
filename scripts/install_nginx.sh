
sudo yum install wget -y
sudo wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/af3bc9b652ed688231da84de09d1d24cb2760e20/nginx.repo -O /etc/yum.repos.d/nginx.repo
sudo yum clean
sudo yum update -y
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo rm -rf /etc/nginx/conf.d
sudo mkdir /etc/nginx/conf.d
sudo rm -rf /etc/nginx/default.d
sudo rm -rf /etc/nginx/nginx.conf
sudo rm -rf /etc/nginx/sites-avaiable
sudo mkdir /etc/nginx/sites-avaiable
sudo rm -rf /etc/nginx/sites-enable
sudo mkdir /etc/nginx/sites-enable
sudo wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/a803fc411c7a520aa669af99db406539f3fb3a98/block.conf -O /etc/nginx/conf.d/block.conf
sudo wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/a803fc411c7a520aa669af99db406539f3fb3a98/cache.conf -O /etc/nginx/conf.d/cache.conf
sudo wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/a803fc411c7a520aa669af99db406539f3fb3a98/gzip.conf -O /etc/nginx/conf.d/gzip.conf
sudo wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/54b1d352339d6277dfbebcd72da4dbac09e6aa4e/nginx.conf -O /etc/nginx/nginx.conf

