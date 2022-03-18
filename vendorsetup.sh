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
rm -rf packages/resources/devicesettings
git clone https://github.com/PixelExperience/packages_resources_devicesettings  packages/resources/devicesettings

