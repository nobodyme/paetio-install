export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

rbenv install 2.2.8 --verbose
rbenv global 2.2.8

echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler
rbenv rehash

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs

gem install rails -v 5.2.0
rbenv rehash

apt-get install -y mysql-server mysql-client libmysqlclient-dev
