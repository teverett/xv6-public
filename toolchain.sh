
wget http://ftpmirror.gnu.org/binutils/binutils-2.21.1.tar.bz2
tar zxvf binutils-2.21.1.tar.bz2
cd binutils-2.21.1
./configure --target=i386-jos-elf --disable-nls
make
make install
cd ..
wget http://ftpmirror.gnu.org/gcc/gcc-4.5.1/gcc-core-4.5.1.tar.bz2
tar zxvf  gcc-core-4.5.1.tar.bz2
cd gcc-4.5.1
./configure --target=i386-jos-elf --disable-nls --without-headers \
              --with-newlib --disable-threads --disable-shared \
              --disable-libmudflap --disable-libssp
make
make install
cd ..
wget http://ftpmirror.gnu.org/gdb/gdb-6.8a.tar.gz
tar zxvf gdb-6.8a.tar.gz
cd gdb-6.8
 ./configure --target=i386-jos-elf --program-prefix=i386-jos-elf- \
              --disable-werror
make
make instsll
