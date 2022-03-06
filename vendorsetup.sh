DIR=$(readlink -f "$0")
HOME=$(dirname "$DIR")

# kernel
if [[ -e kernel/oneplus/cheeseburger ]];then
cd $HOME/kernel/oneplus/cheeseburger
git pull
else
git clone https://github.com/ederekun/x_kernel_oneplus_msm8998.git  $HOME/kernel/oneplus/cheeseburger
fi
# vendor
if [[ -e vendor/oneplus/cheeseburger ]];then
cd $HOME/vendor/oneplus/cheeseburger
git pull
else
git clone https://github.com/FabricioSC123/vendor_oneplus_cheeseburger.git  $HOME/vendor/oneplus/cheeseburger
fi
# hardware
if [[ -e hardware/oneplus ]];then
cd $HOME/hardware/oneplus
git pull
else
git clone https://github.com/PixelExperience/hardware_oneplus $HOME/hardware/oneplus
fi
cd $HOME
# Add Ccache Fix
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=/mnt/ccache
ccache -M 50G -F 0 
