# kernel
if [[ -e kernel/oneplus/cheeseburger ]];then
cd kernel/oneplus/cheeseburger
git pull
cd ../../..
else
git clone https://github.com/ederekun/x_kernel_oneplus_msm8998.git  kernel/oneplus/cheeseburger
fi
# vendor
if [[ -e vendor/oneplus/cheeseburger ]];then
cd vendor/oneplus/cheeseburger
git pull
cd ../../..
else
git clone https://github.com/FabricioSC123/vendor_oneplus_cheeseburger.git  vendor/oneplus/cheeseburger
fi
# hardware
if [[ -e hardware/oneplus ]];then
cd hardware/oneplus
git pull
cd ../..
else
git clone https://github.com/PixelExperience/hardware_oneplus.git hardware/oneplus
fi
# Add Ccache Fix
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=/mnt/ccache
ccache -M 50G -F 0 
