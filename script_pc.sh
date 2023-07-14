sudo apt update
sudo apt upgrade

sudo apt install terminator -y
sudo apt install vim -y
sudo apt install git -y

## Instalar pacote para rodar o ifconfig
sudo apt install net-tools

sudo snap install postman

### SWAP -- configurar manualmente
#sudo swapon --show
#free -h
#df -h
#sudo swapoff -a
#sudo fallocate -l 16G /swapfile
#ls -lh /swapfile
#sudo chmod 600 /swapfile
#ls -lh /swapfile
#sudo mkswap /swapfile
#sudo swapon /swapfile
#sudo swapon --show
#free -h
#sudo cp /etc/fstab /etc/fstab.bak
#echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
###

sudo snap install pycharm-community --classic
sudo snap install phpstorm --classic
sudo snap install dbeaver-ce
sudo apt install xclip -y
sudo snap install slack
sudo snap install todoist

##### INSTALL SUBLIME
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text

snap install spotify

sudo apt install gdebi -y
wget http://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb -y

## Keepass
sudo add-apt-repository ppa:jtaylor/keepass
sudo apt-get update
sudo apt-get install keepassx


#sudo apt install gnome-tweak-tool --- ?????
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo apt-get update
sudo apt-get install sublime-text-installer -y
 
sudo add-apt-repository ppa:peek-developers/stable -y
sudo apt-get update
sudo apt-get install peek -y



sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
sudo apt-get update
apt-cache policy docker-engine
sudo apt-get install -y docker-engine curl docker-compose
COMPOSE_VERSION=`git ls-remote https://github.com/docker/compose | grep refs/tags | grep -oP "[0-9]+\.[0-9][0-9]+\.[0-9]+$" | tail -n 1`
sudo sh -c "curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose
sudo sh -c "curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/contrib/completition/bash/docker-compose > /etc/bash_completion.d/docker-compose"
sudo systemctl status docker   
sudo usermod -aG docker $(whoami)

# config alias 
# alias upgitmaster='git checkout master && git pull && git submodule update && docker-compose run --entrypoint "./vendor/bin/phinx migrate -e development" php_apache'
# alias upgit='git pull && git submodule update && docker-compose run --entrypoint "./vendor/bin/phinx migrate -e development" php_apache'
