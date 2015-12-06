
echo "List avaiable domain:"
for entry in /etc/nginx/sites-avaiable/*.conf
do
        file=$(basename $entry)
        filename="${file%.*}"
	if [ "$filename" !=  "*" ]; 
	then
        	echo "- ${filename}"
        fi
done
