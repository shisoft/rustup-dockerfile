
wget http://prdownloads.sourceforge.net/oprofile/oprofile-1.3.0.tar.gz
tar -zxvf oprofile-1.3.0.tar.gz 
cd oprofile-1.3.0
./configure
make
make install
cd ../
rm -rf oprofile-1.3.0