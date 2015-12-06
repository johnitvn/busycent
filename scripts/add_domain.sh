# Create group webusr for all web admin user
`sudo getent group webusr || sudo groupadd webusr`

echo "Please input domain"
read domain
if [ -f "/etc/nginx/sites-avaiable/${domain}.conf" ]
then
        echo "Domain: ${domain} is exist!!"
        exit
fi


echo "Please input username"
read username
if [ -f "/home/${username}" ]
then
	echo "User: ${username} is exist!!"
	exit
fi


sudo useradd -g webusr $username
echo "Please input password"
sudo passwd $username
sudo mkdir /home/${username}/logs
touch /home/${username}/logs/error.log
touch /home/${username}/logs/access.log
sudo mkdir /home/${username}/htdocs
sudo chown ${username}:${group} -R /home/${username}

sudo wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/54b1d352339d6277dfbebcd72da4dbac09e6aa4e/phpfpm-pool.conf -O /etc/php-fpm.d/${domain}.conf
sudo perl -pi -e "s/WWWusernameWWW/${username}/g" /etc/php-fpm.d/${domain}.conf

sudo wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/3fda1da6c059012ae0c0a717c05de62946dd25eb/nginx-domain.conf -O /etc/nginx/sites-avaiable/${domain}.conf
sudo perl -pi -e "s/WWWusernameWWW/${username}/g" /etc/nginx/sites-avaiable/${domain}.conf
sudo perl -pi -e "s/WWWdomainWWW/${domain}/g" /etc/nginx/sites-avaiable/${domain}.conf

sudo service nginx restart
sudo service php-fpm restart
