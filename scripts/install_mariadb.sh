sudo yum install mariadb-server mariadb -y
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql_secure_installation
