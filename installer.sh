echo "Install depends"
sudo yum install wget nano -y
echo ""
echo "Download busycent package"
sudo rm -rf ~/busycent.tar.gz
sudo rm -rf ~/busycent-master
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
echo ""
echo "Install done!!!"
