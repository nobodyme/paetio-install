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
cd ~/paetio-install
cp redis.conf /etc/redis

cp redis.service /etc/systemd/system/
adduser --system --group --no-create-home redis
mkdir /var/lib/redis
chown redis:redis /var/lib/redis
chmod 770 /var/lib/redis
systemctl start redis
systemctl status redis

# install instructions in this link
# https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04
