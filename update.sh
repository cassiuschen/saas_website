rm -v dev.html
git pull
ruby devstatus.rb > dev.html
sudo service nginx restart