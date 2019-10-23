#!/bin/bash
echo updating raspbian
sudo apt-get update -yq
sudo apt-get install build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev -yq
echo - - - - - - - - - -
echo raspbian up-to-date
echo - - - - - - - - - - 
echo getting python3.7.5
echo - - - - - - - - - -
wget https://www.python.org/ftp/python/3.7.5/Python-3.7.5.tar.xz
tar xf Python-3.7.5.tar.xz
cd Python-3.7.5
./configure
echo - - - - - - -  
echo making binary
echo - - - - - - - 
make -j 4
echo - - - - - - - - - - - -
echo installing python3.7.5
echo - - - - - - - - - - - -
sudo make altinstall
echo - - - - - - - - - - - - - - - - - - - -
echo success! python3.7.5 already istalled !
echo - - - - - - - - - - - - - - - - - - - -
echo removing unncessaries packages
cd ..
sudo rm -r Python-3.7.5
rm Python-3.7.5.tar.xz
sudo apt-get --purge remove build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev -yq
sudo apt-get autoremove -yq
sudo apt-get clean
echo - x - x - x - x -
echo End of Installer
echo - x - x - x - x -