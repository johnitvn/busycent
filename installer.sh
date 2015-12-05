echo "Install depends"
sudo yum install wget nano -y
echo ""
echo "Download busycent package"
sudo wget https://github.com/johnitvn/busycent/archive/master.tar.gz -O /tmp/busycent.tar.gz
echo ""
echo "Uncompress busycent package"
sudo tar -xzvf /tmp/busycent.tar.gz
echo ""
echo "Clean old version and install"
sudo rm -rf /usr/share/busycent
sudo mkdir /usr/share/busycent
sudo cp -r /tmp/busycent-master /usr/share/busycent
echo ""
echo "Make runable"
sudo chmod +X /usr/share/busycent/*
sudo ln -s /usr/share/busycent/busycent.sh /usr/bin/busycent

