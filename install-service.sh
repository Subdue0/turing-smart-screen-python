#!/usr/bin/env bash
set -e

# 获取项目根目录
INSTALL_DIR="$(cd "$(dirname "$0")" && pwd)"

# 判断操作系统
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # Linux：生成 systemd unit 并安装
  sed "s|/INSTALL_DIR|${INSTALL_DIR}|g" "${INSTALL_DIR}/turing.service" > /tmp/turing.service

  sudo mv /tmp/turing.service /etc/systemd/system/
  sudo systemctl daemon-reload
  sudo systemctl enable --now turing.service

  echo "✅ Linux 下已安装并启动 systemd 服务：turing"
  echo "   查看日志：journalctl -u turing -f"
  echo "   停止服务：sudo systemctl stop turing"

else
  echo "⚠️ 不支持的操作系统：$OSTYPE"
  exit 1
fi