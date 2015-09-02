# Run as root
# Add non-free to /etc/apt/sources.list to Debian Repository

apt-get update
m-a prepare
apt-get install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms
modprobe -r b44 b43 b43legacy ssb brcmsmac
modprobe wl

shutdown -r
