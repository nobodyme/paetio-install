apt-get -y install imagemagick gsfonts
echo "export RAILS_ENV=production" >> ~/.bashrc
source ~/.bashrc
cd ~/

add-apt-repository ppa:bitcoin/bitcoin
apt-get update
apt-get install -y bitcoind

mkdir -p ~/.bitcoin
cp ~/paetio-install/bitcoin.conf ~/.bitcoin/

echo "set username password in ~/.bitcoin/bitcoin.conf"

#edit conf after this for bitcoind
#set username and password to access bitcoind in config/currenices.yml