if [ -f "$file" ] then
  sudo wget -O /usr/bin/speedtest.py https://raw.github.com/sivel/speedtest-cli/master/speedtest_cli.py
  sudo chmod +X /usr/bin/speedtest.py
fi
python /usr/bin/speedtest.py
