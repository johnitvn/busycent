echo "Install depends"
sudo yum install wget nano -y
echo ""
echo "Clean old version and install"
sudo rm -rf ~/busycent*
sudo rm -rf /usr/share/busycent
sudo mkdir /usr/share/busycent
echo ""
echo "Download busycent package"
sudo wget https://github.com/johnitvn/busycent/archive/master.tar.gz -O ~/busycent.tar.gz
echo ""
echo "Uncompress busycent package"
sudo tar -xzvf  ~/busycent.tar.gz
sudo cp -r ~/busycent-master/* /usr/share/busycent
echo ""
echo "Make runable"
sudo chmod +X /usr/share/busycent/*
echo export PATH=$PATH:/usr/share/busycent >> ~/.bash_profile
source ~/.bash_profile
echo ""
echo "Install done!!!"
