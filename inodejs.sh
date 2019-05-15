#!/bin/bash
echo -e "#==============================================================# "
echo -e  "# Name:         Script for instaling nodeJs                   #"
echo -e  "# Description:  Install NodeJs on spesific Versions           #"
echo -e  "# Version:      V.Karya Anak Bangsa.1.1                       #"
echo -e  "# Author     :  DevOps@payrightsystem.com                     #"
echo -e  "# License:      GNU General Public License, version 3 (GPLv3) #"
echo -e  "# License URI:  http://www.gnu.org/licenses/gpl-3.0.html      #"
echo -e  "#=============================================================#"


echo -e "Welcome, this tools created for make easily when you installing nodeJS based nodeJS VERSION";
echo -e "Please choose, which Version would you like to install";
echo -e "PLease Wait, BOT well be Scanning Version NodeJs";
for i in {3..1};do echo -n "$i." && sleep 0.3; done;
echo -e  "\n \033[2m1. Node.js v12.x : latest ";
for i in {3..1};do echo -n "$i." && sleep 0.3; done;
echo -e "\n \033[2m2. Node.js v11.x :  ";
for i in {3..1};do echo -n "$i." && sleep 0.3; done;
echo -e "\n \033[2m3. Node.js v10.x :  ";
for i in {3..1};do echo -n "$i." && sleep 0.3; done;
echo -e "\n \033[2m4. Node.js v8.x  :  ";
for i in {3..1};do echo -n "$i." && sleep 0.3; done;
echo -e "\n \033[2m5. Node.js v6.x  :" ;
echo -e "\n \033[1m DONE...";
echo -e "\n \033[1m Which Versions you choose ?";
read number
case $number in
1)
	$(curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && sudo apt-get install -y nodejs);;
2)
	$(curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash - && sudo apt-get install -y nodejs);;
3)
	$(curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - && sudo apt-get install -y nodejs);;
4)
	$(curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && sudo apt-get install -y nodejs);;
5)
	$(curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && sudo apt-get install -y nodejs);;
*)
echo "Sorri brow try againts latter";;
esac
echo -e "create a directory for global installations"
mkdir ~/.npm
npm config set prefix ~/.npm
#nano ~/.bashrc
export PATH="$PATH:$HOME/.npm/bin"
source ~/.bashrc
echo "YOUR NODE VERSION IS : "
sudo node --version
echo "Done Thanks"
echo "BaiBaiii"
exit 2
