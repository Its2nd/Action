sudo apt update && sudo apt upgrade -y


sudo apt install -y git build-essential cmake automake libtool autoconf
sudo apt install -y libhwloc-dev libuv1-dev libssl-dev msr-tools


git clone https://github.com/xmrig/xmrig.git


cd xmrig
mkdir build && cd build
cmake ..
make -j$(nproc)

echo "XMRig installation complete!"
echo "To start mining, run:"
echo "./xmrig -o pool.supportxmr.com:3333 -u <44o15N6CpQaVm5tD36tah3NqcTdBm6MGyXTWMqi9QYdkG12Lzr92TAm5gKx3u2txnDaFkm6BtKfuiB8L8smQ3iNA3bn9iGk> -p worker -k --coin monero"
