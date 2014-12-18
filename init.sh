echo "Start provisioning"

if ! [ -d InsSoft ]; then
mkdir InsSoft
fi

sudo apt-get update

if ! [ -f InsSoft/OpenJDK7 ]; then
echo "Installing OpenJDK7"
sudo apt-get install openjdk-7-jre -y >> InsSoft/OpenJDK7
fi

if ! [ -f InsSoft/Jenkins ]; then
echo "Installing Jenkins"
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - >> InsSoft/Jenkins
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list' >> InsSoft/Jenkins
sudo apt-get update >> InsSoft/Jenkins
sudo apt-get install jenkins -y >> InsSoft/Jenkins
fi

if ! [ -f InsSoft/RVM ]; then
echo "Installing RVM"
sudo apt-get install curl -y >> InsSoft/RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3 >> InsSoft/RVM
sudo \curl -sSL https://get.rvm.io | bash -s stable >> InsSoft/RVM
source /home/vagrant/.rvm/scripts/rvm >> InsSoft/RVM
fi 
