# paetio-install

```cd ~/
git clone https://github.com/nobodyme/paetio-install.git
sudo ./1-core-rbenv.sh
sudo ./2-rbenv-plugins.sh
sudo ./3-mysql.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
rbenv install 2.2.8 --verbose
rbenv global 2.2.8
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler
rbenv rehash
gem install rails -v 5.2.0
rbenv rehash

sudo ./4-rabbitmq-erlang.sh
sudo ./5-redis-one.sh

# further install instructions in this link, 
# https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04
# follow how to edit config file
# Change this on redis.conf file in /etc/redis
# supervised systemd
# dir /var/lib/redis

sudo ./5-redis-two.sh 
sudo ./6-bitcoin.sh

# edit conf after this for bitcoind
# set username and password to access bitcoind in config/currenices.yml

sudo ./7-github.sh

# edit config/application.yml to set up site URL_HOST
# paste same bitcoin username and password in config/currenices.yml
# set mysql admin name and password in config/database.yml
# edit db/seeds.rb file to input admin user name and password for the website

bundle exec rake db:setup
bundle exec rake daemons:start
bundle exec rails server
