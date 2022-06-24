#!/bin/bash
green='\e[32m'
clear='\e[0m'

sudo apt update
echo -e "[+] Installing go language from apt repository"
sudo apt install golang-go -y
cd ~/Desktop/
if [ ! -d tools ]; then
    mkdir ./tools
    echo "[*] Created new directory in ~/Desktop/tools"
fi
cd ./tools/


echo -e "${green}[+] Downloading 'assetfinder' tool with 'go install'${clear}"
go install -v github.com/tomnomnom/assetfinder@latest

echo -e "${green}[+] Downloading 'subjs' tool with 'go install'${clear}"
go install -v github.com/lc/subjs@latest

echo -e "${green}[+] Downloading 'Sublist3r' tool from github${clear}"
git clone https://github.com/aboul3la/Sublist3r.git
cd ./Sublist3r/
sudo pip install -r requirements.txt
cd ../

echo -e "${green}[+] Downloading 'xnLinkFinder' tool from github${clear}"
git clone https://github.com/xnl-h4ck3r/xnLinkFinder.git
cd ./xnLinkFinder/
sudo chmod 744 xnLinkFinder.py
cd ../

echo -e "${green}[+] Downloading 'httprobe' tool from apt repository${clear}"
sudo apt install httprobe -y

echo -e "${green}[+] All dependencies are downloaded.${clear}"
echo -e "\n[!] For results from VirusTotal search engine please get API key from ${green}https://www.virustotal.com/gui/my-apikey${clear} and set a new environment variable as ${green}VT_API_KEY${clear}"