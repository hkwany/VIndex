dpkg-query -s wget

if [ $? == 1 ]; then
apt-get install wget
fi
