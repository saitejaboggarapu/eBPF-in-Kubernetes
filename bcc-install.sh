
sudo apt install -y zip bison build-essential cmake flex git libedit-dev \
libllvm12 llvm-12-dev libclang-12-dev python zlib1g-dev libelf-dev libfl-dev python3-setuptools \
liblzma-dev arping netperf iperf ;
git clone https://github.com/iovisor/bcc.git ;
mkdir bcc/build; cd bcc/build ;
cmake .. ;
make ;
sudo make install;
cmake -DPYTHON_CMD=python3 .. ;
pushd src/python/ ;
make ;
sudo make install ;
popd ;
sudo apt install linux-tools-$(uname -r) ;