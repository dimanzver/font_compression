How to install
------------------------------------------

#if not installed pip
sudo apt install python-pip

#install package
pip install fonttools

#install additional packages
git clone https://github.com/google/brotli
cd brotli
python setup.py install

git clone https://github.com/anthrotype/py-zopfli
cd py-zopfli
git submodule update --init --recursive
sudo python setup.py install

#I don`t know, why pip lib not works
#And install fonttools to system
sudo apt install fonttools


#run convert.html in your browser and input need Unicode ranges
#copy to codex.txt
sh generate_fonts.sh

#generated fonts will be moved to dist directory


