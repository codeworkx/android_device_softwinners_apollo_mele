#!/system/bin/sh

# mali
modprobe ump
modprobe mali

modprobe sun4i-ir.ko

# network module
modprobe usbnet.ko
modprobe asix.ko
modprobe qf9700.ko
modprobe mcs7830.ko
modprobe rtl8150.ko

# gpio module
modprobe gpio_sw.ko

# spdif
modprobe sun4i_spdif.ko	
modprobe sun4i_spdma.ko
modprobe sndspdif.ko
modprobe sun4i_sndspdif.ko

# usb tether function
modprobe cdc_ether.ko
modprobe cdc_eem.ko
modprobe cdc_subset.ko

exit 0
