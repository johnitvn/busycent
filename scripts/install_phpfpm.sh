sudo yum install wget epel-release -y
sudo yum clean 
sudo yum update -y
sudo yum install php php-mysql php-fpm php-mbstring php-mcrypt php-common php-cli -y
sudo rm -rf /etc/php-fpm.d/*
sudo systemctl start php-fpm
sudo systemctl enable php-fpm
