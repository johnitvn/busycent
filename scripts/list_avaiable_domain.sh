echo "List avaiable domain:"
for entry in /etc/nginx/sites-avaiable/*.conf
do
        file=$(basename $entry)
        filename="${file%.*}"
        echo "- ${filename}"
done
