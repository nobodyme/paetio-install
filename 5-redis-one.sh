apt-get update
apt-get install -y build-essential tcl
cd /tmp
curl -O http://download.redis.io/redis-stable.tar.gz
tar xzvf redis-stable.tar.gz
cd redis-stable
make
make test
cp src/redis-server /usr/local/bin/
cp src/redis-cli /usr/local/bin/
mkdir /etc/redis
cp /tmp/redis-stable/redis.conf /etc/redis

# install instructions in this link, 
# https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04
#follow how to edit config file

# Change this on redis.conf file in /etc/redis
# supervised systemd
# dir /var/lib/redis
