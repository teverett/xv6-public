
GCC=gcc-7.5.0
BINUTILS=binutils-2.37

#wget http://ftpmirror.gnu.org/binutils/$BINUTILS.tar.gz
#tar zxvf $BINUTILS.tar.gz
#cd $BINUTILS
#./configure --target=i386-jos-elf --disable-nls
#make
#sudo make install
#cd ..
wget http://mirror.its.dal.ca/gnu/gcc/$GCC/$GCC.tar.gz
tar zxvf $GCC.tar.gz
cd $GCC 
./configure --target=i386-jos-elf --disable-nls --without-headers \
              --with-newlib --disable-threads --disable-shared \
              --disable-libmudflap --disable-libssp --enable-languages=c
make
#sudo make install
cd ..
#wget http://ftpmirror.gnu.org/gdb/gdb-6.8a.tar.gz
#tar zxvf gdb-6.8a.tar.gz
#cd gdb-6.8
# ./configure --target=i386-jos-elf --program-prefix=i386-jos-elf- \
#              --disable-werror
#make
#make install
