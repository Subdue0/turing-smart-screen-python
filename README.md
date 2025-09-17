# 图灵智显监控副屏 3.5″

> 已在 **Ubuntu 24.04.3** 上验证通过，**Windows 暂未测试**，仅供参考。

## 🚀 快速部署

| 步骤 | 命令 |
| ---- | ---- |
| ① 下载源码 | `git clone https://github.com/Subdue0/turing-smart-screen-python.git && cd turing-smart-screen-python` |
| ② 安装依赖（Python≥3.8） | `python3 -m venv .tssp && source .tssp/bin/activate && pip install -r requirements.txt` |
| ③ 后台运行监控 | `nohup python main.py > /dev/null 2>&1 &` |

## 📺 屏幕预览
<div align="center">
  <img src="https://github.com/Subdue0/turing-smart-screen-python/raw/master/res/themes/MyTheme/preview.png" width="320"/>
  <br>
  <em>3.5″ IPS 实时系统监控副屏效果</em>
</div>

## 📋 后续操作
- 查看实时日志：`tail -f log.log`
- 停止进程：`pkill -f "python main.py"`
- 换主题：编辑 `config.yaml` 文件 → 添加主题到 `/res/themes` 中 → 重启进程
- 换字体：添加主题到 `/res/fonts` 中 → 编辑主题目录下的 `theme.yaml` 文件 → 重启进程
- 改网卡：运行 `ip a` 找到自己的网卡名（如 `enp2s0` 或 `wlan0`）→ 填进 `config.yaml` 的 `ETH / WLO` 项 → 重启进程
