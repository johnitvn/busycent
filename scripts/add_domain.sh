# Create group webusr for all web admin user
getent group webusr || groupadd webusr

echo "Please input domain"
if [ -f "/etc/nginx/sites-avaiable/${domain}.conf" ]
then
        echo "Domain: ${domain} is exist!!"
        exit
fi
read domain
echo "Please input username"
read username
if [ -f "/home/${username}" ]
then
	echo "User: ${username} is exist!!"
	exit
fi


useradd -g webusr $username
echo "Please input password"
passwd $username
mkdir /home/${username}/logs
mkdir /home/${username}/htdocs
chown ${username}:${group} -R /home/${username}

wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/b7ed8af00dcbaf6b1e96ca97475557e6a2dd23dd/phpfpm-pool.conf -O /etc/php-fpm.d/${domain}.conf
perl -pi -e "s/WWWusernameWWW/${username}/g" /etc/php-fpm.d/${domain}.conf

wget https://gist.githubusercontent.com/johnitvn/1043a01d8a9705096390/raw/b7ed8af00dcbaf6b1e96ca97475557e6a2dd23dd/phpfpm-pool.conf -O /etc/nginx/sites-avaiable/${domain}.conf
perl -pi -e "s/WWWusernameWWW/${username}/g" /etc/nginx/sites-avaiable/${domain}.conf
perl -pi -e "s/WWWdomainWWW/${domain}/g" /etc/nginx/sites-avaiable/${domain}.conf

service nginx restart
service php-fpm restart
