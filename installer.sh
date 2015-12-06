echo "Install depends"
sudo yum install wget nano -y
echo ""
echo "Download busycent package"
sudo wget https://github.com/johnitvn/busycent/archive/master.tar.gz -O ~/busycent.tar.gz
echo ""
echo "Uncompress busycent package"
sudo tar -xzvf  ~/busycent.tar.gz
echo ""
echo "Clean old version and install"
sudo rm -rf /usr/share/busycent
sudo mkdir /usr/share/busycent
sudo cp -r ~/busycent-master/* /usr/share/busycent
echo ""
echo "Make runable"
sudo chmod +X /usr/share/busycent/*
echo export PATH=$PATH:/usr/share/busycent >> ~/.profile
source ~/.profile
sudo ln -s /usr/share/busycent/busycent.sh /usr/share/busycent/busycent
echo ""
echo "Install done!!!"
