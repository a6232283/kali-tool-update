#!/bin/bash

# 檢查是否以 root 權限執行
if [[ $EUID -ne 0 ]]; then
   echo "請以 root 權限執行此腳本。" 
   exit 1
fi

echo "開始更新 Kali Linux 系統..."

# 更新軟體源列表
echo "正在更新軟體源列表..."
apt update

# 升級已安裝的軟體包
echo "正在升級已安裝的軟體包..."
apt upgrade -y

# 升級發行版
echo "正在升級發行版..."
apt dist-upgrade -y

# 清理無用的軟體包
echo "正在清理無用的軟體包..."
apt autoremove -y

# 提示完成並建議重新啟動
echo "更新完成！建議重新啟動系統以確保所有更改生效。"
echo "您可以使用以下命令重新啟動系統：sudo reboot"
