sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/MariaDB.repo http://mariadb.if-not-true-then-false.com/rhel/$(rpm -E %rhel)/$(uname -i)/10
sudo yum clean
sudo yum update -y
sudo yum install MariaDB-server MariaDB-client -y
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql_secure_installation
