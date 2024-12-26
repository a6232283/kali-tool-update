#!/bin/bash

# 檢查是否以 root 權限執行
if [[ $EUID -ne 0 ]]; then
   echo "請以 root 權限執行此腳本。" 
   exit 1
fi

echo "開始更新 Kali Linux 系統..."

# 更新軟體源列表
apt update

# 升級已安裝的軟體包
apt upgrade -y

# 升級發行版
apt dist-upgrade -y

# 清理無用的軟體包
apt autoremove -y

# 提示完成並重新啟動
sudo reboot
