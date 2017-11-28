sudo apt-get remove docker docker-engine
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
os_name=`lsb_release –I | awk ‘{print $3}’`
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/$os_name $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce 
#sudo groupadd docker
#sudo usermod -aG docker $USER
#logout
sudo systemctl enable docker

