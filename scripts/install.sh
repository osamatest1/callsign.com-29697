#!/bin/bash

# this script is to install necessary tools in the vm

echo "Start Installing...."
#sudo apt-get update && sudo apt-get upgrade

# install go 1.16 version
wget https://go.dev/dl/go1.19.linux-amd64.tar.gz
sudo tar -xvf go1.19.linux-amd64.tar.gz
sudo mv -f go /usr/local/
export GOROOT=/usr/local/go
export GOPATH=$HOME/go 
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
go version
# install gobuster 
go install github.com/OJ/gobuster/v3@latest
# install  tools and depandency
go get -v github.com/OWASP/Amass/v3/...
# amass
sudo apt install -y libpcap-dev
GO111MODULE=on go get -v github.com/projectdiscovery/naabu/v2/cmd/naabu
# naabu port scanner
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
# subFinder
go get -u github.com/tomnomnom/assetfinder
# asset Finder
GO111MODULE=on go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
# Nuclei vuln scanner
GO111MODULE=on go get -v github.com/projectdiscovery/notify/cmd/notify
# notfy we need configuration file 
# GO111MODULE=on go get -v github.com/tomnomnom/anew
# anew
GO111MODULE=on go get -v github.com/projectdiscovery/httpx/cmd/httpx
# httpx
go get -u github.com/tomnomnom/httprobe
#Httprobe

#go path don't remove it
export GOROOT=/usr/local/go
export GOPATH=$HOME/go 
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PATH=~/go/bin:$PATH

echo 'Installing FFUF'
go install github.com/ffuf/ffuf@latest
echo 'Installing cent'
GO111MODULE=on go get -u github.com/xm1k3/cent
echo 'Installing DNSCewl'
wget -q -O /tmp/DNSCewl https://github.com/codingo/DNSCewl/raw/master/DNScewl && mv /tmp/DNSCewl /usr/bin/DNSCewl && chmod +x /usr/bin/DNSCewl

echo 'Installing dnsx'
GO111MODULE=on go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest

echo 'Installing exclude-cdn'
GO111MODULE=on /usr/local/go/bin/go install github.com/Cgboal/exclude-cdn@latest
echo 'Installing fff'
go install github.com/tomnomnom/fff@latest
echo 'Installing gf'
go install github.com/tomnomnom/gf@latest
echo "installation of tools done.." | anew msg.txt 
