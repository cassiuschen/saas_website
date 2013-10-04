echo 'this is autoinstall by RubyScrip'
rm -v index.html
rm -v mirrors-ubuntu.html
rm -v mirrors.html
rm -v mirrors-debian.html
rm -v mirrors-rubygems.html
git pull
ruby index.rb > index.html
ruby ubuntu.rb > mirrors-ubuntu.html
ruby mirrors.rb > mirrors.html
ruby debian.rb > mirrors-debian.html
ruby rubygems.rb > mirrors-rubygems.html
service nginx restart
