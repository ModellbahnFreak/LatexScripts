#!/bin/bash

set -e

cd ~
mkdir public_html
chmod a+x .
chmod a+x public_html
mkdir gitTemp
cd gitTemp
git clone "https://github.tik.uni-stuttgart.de/$1/$2.git"
cd $2
cd presentation
make
cd ../article
make
cd ..
mv article/land.pdf ~/public_html
mv presentation/stadt.pdf ~/public_html
cd ~/public_html
chmod a+r land.pdf
chmod a+r stadt.pdf
read -p "Press [Enter] key to remove files"
cd ~
rm -f -r public_html
rm -f -r gitTemp
