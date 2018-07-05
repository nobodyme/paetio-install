git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build > /dev/null 2>&1
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
