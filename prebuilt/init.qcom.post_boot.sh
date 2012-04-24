#!/system/bin/sh
# Copyright (c) 2009-2011, Code Aurora Forum. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Code Aurora nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

target=`getprop ro.product.device`
case "$target" in
    "p500" )
         # cpufreq ondemand gov
	 #echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	 #echo 50000 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
	 #echo 90 > /sys/devices/system/cpu/cpufreq/ondemand/up_threshold
	 #chown system /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
	 #echo 1 > /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
	 #echo 4 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
	 #chown system /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
	 #chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
	 #chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
         echo 320000 > /sys/devices/system/cpu/cpu0/cpufreq/screen_off_max_freq
        ;;
esac

usb_config=`getprop persist.sys.usb.config`
case "$usb_config" in
    "") # USB persist config not set, select default configuration
        ## setprop persist.sys.usb.config mass_storage,adb
    ;;
esac


