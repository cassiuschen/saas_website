echo 'this is autoinstall by RubyScrip'
rm -v index.html
rm -v ubuntu.html
git pull
ruby index.rb > index.html
ruby ubuntu.rb > mirrors-ubuntu.html
service nginx restart
