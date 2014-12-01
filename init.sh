echo "Start provisioning"
sudo apt-get update
sudo apt-get install openjdk-7-jre -y
sudo apt-get install jenkins -y
sudo apt-get install curl -y
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
sudo \curl -sSL https://get.rvm.io | bash -s stable
source /home/vagrant/.rvm/scripts/rvm
