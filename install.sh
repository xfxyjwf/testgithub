#!/bin/bash

autoreconf --version

git clone https://github.com/google/protobuf.git
cp -f configure.ac protobuf
cd protobuf
pwd
echo "Running autogen.sh..."
# minimal testcase for https://github.com/google/protobuf/issues/149
./autogen.sh
echo "Running ./configure --prefix=/usr"
./configure --prefix=/usr
echo "Running make"
make
