sudo yum install wget -y
wget https://github.com/johnitvn/busycent/archive/master.tar.gz -O /tmp/busycent.tar.gz
tar -xzvf /tmp/busycent.tar.gz
cp /tmp/busycent-master /usr/bin/
cp busycent.sh busycent
chmod +X /usr/bin/*

