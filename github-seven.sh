git clone https://devappoets@bitbucket.org/appoets/peatio.git
cd ~/peatio
bundle install
#on error do json update and do bundle install again
bundle update json
bundle install

#edit config/application.yml to set up site URL_HOST
#paste same bitcoin username and password in config/currenices.yml

#edit seeds.rb file to input admin user name and password for the exchange
#bundle exec rake db:setup

#bundle exec rake daemons:start
#bundle exec rails server
