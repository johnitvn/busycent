sudo yum install wget -y
sudo wget https://github.com/johnitvn/busycent/archive/master.tar.gz -O /tmp/busycent.tar.gz
sudo tar -xzvf /tmp/busycent.tar.gz
sudo rm -rf /usr/share/busycent
sudo mkdir /usr/share/busycent
sudo cp /tmp/busycent-master/* /usr/share/busycent
sudo chmod +X /usr/share/busycent/*
ln -s /usr/share/busycent/busycent.sh /usr/bin/busycent

