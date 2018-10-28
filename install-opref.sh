
FILENAME=oprofile-1.3.0
wget http://prdownloads.sourceforge.net/oprofile/$FILENAME.tar.gz
tar -zxvf $FILENAME.tar.gz
cd $FILENAME
./configure
make
make install
cd ../
rm -rf $FILENAME
rm $FILENAME.tar.gz
chmod +x profile.sh
mv /profile.sh /usr/bin/profile