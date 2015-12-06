echo ""
echo "Please enter domain want to ennable"
read domain

if [ ! -f "/etc/nginx/sites-avaiable/${domain}.conf" ]
then
        echo "Domain: ${domain} is not exist. You must add fisrt!"
        exit
fi

sudo ln -s /etc/nginx/sites-avaiable/${domain}.conf /etc/nginx/sites-enable/${domain}.conf
sudo service nginx restart
echo "Done!!!"
