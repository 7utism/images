dd if=/dev/zero of=/home/swap bs=1024 count=4096000
/sbin/mkswap /home/swap
/sbin/swapon /home/swap
echo "/home/swap swap swap defaults 0 0" >> /etc/fstab
echo "Done. DingDangCloud."
