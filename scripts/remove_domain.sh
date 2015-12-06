echo "Please input domain"
read domain

if [ ! -f "/etc/nginx/sites-avaiable/${domain}.conf" ]
then
        echo "Domain: ${domain} is not exist!!"
        exit
fi

read -p "Are you sure want to delete ${domain}? We will delete user and all data of user " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	user=$(awk '/^user/{print $3}' /etc/php-fpm.d/${domain}.conf)
	userdel -r user;
	rm -rf /etc/nginx/sites-avaiable/${domain}.conf
	rm -rf /etc/php-fpm.d/${domain}.conf
fi

