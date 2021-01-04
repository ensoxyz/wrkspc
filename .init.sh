#!/usr/bin/zsh
#LLVM/CLANG


#NINJA
git clone git://github.com/ninja-build/ninja.git ~/wrkspc/.tmp/ninja
(cd ~/wrkspc/.tmp/ninja && cmake -Bbuild-cmake -H.)
(cd ~/wrkspc/.tmp/ninja && cmake --build build-cmake)
(cd ~/wrkspc/.tmp/ninja/build-cmake && sudo make)
(cd ~/wrkspc/.tmp/ninja/build-cmake && sudo make install clean)

#PYTHON
git clone git@github.com:python/cpython.git ~/wrkspc/.tmp/python
(cd ~/wrkspc/.tmp/python && ./configure --prefix=$HOME/python3.9)
(cd ~/wrkspc/.tmp/python && make)
(cd ~/wrkspc/.tmp/python && make install)




