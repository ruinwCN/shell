echo "install ..."
sudo apt update
yes | sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
yes | sudo apt install docker-ce
apt list -a docker-ce
yes | sudo apt install docker-ce=5:18.09.6~3-0~ubuntu-bionic
# hold version
sudo apt-mark hold docker-ce
sudo usermod -aG docker $USER


# curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
# sudo add-apt-repository  "deb [arch=amd64] https://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
