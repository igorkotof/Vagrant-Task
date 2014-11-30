echo "Start provisioning"
sudo apt-get update
sudo apt-get install openjdk-7-jre -y
sudo apt-get install jenkins -y
sudo \curl -sSL https://get.rvm.io | bash -s stable
