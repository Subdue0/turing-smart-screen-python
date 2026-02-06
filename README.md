# 图灵智显监控副屏 3.5″

> 已在 **Ubuntu 24.04.3**、**Windows 10 22H2** 上验证通过，其余系统仅供参考。

## 🚀 Linux 快速部署

| 步骤 | 命令 |
| ---- | ---- |
| ① 下载源码 | `git clone https://github.com/Subdue0/turing-smart-screen-python.git && cd turing-smart-screen-python` |
| ② 安装依赖（Python≥3.8） | `python3 -m venv .tssp && source .tssp/bin/activate && pip install -r requirements.txt` |
| ③ 运行监控 | `python main.py` |
| ④ 开机自启（可选） | `chmod +x ./install-service.sh && ./install-service.sh` |

## 🚀 Windows 快速部署

| 步骤 | 命令 |
| ---- | ---- |
| ① 下载源码 | `git clone https://github.com/Subdue0/turing-smart-screen-python.git && cd turing-smart-screen-python` |
| ② 安装依赖（Python≥3.8） | `python -m venv .tssp && .tssp\Scripts\activate.bat && pip install -r requirements.txt` |
| ③ 运行监控 | `python main.py` |

### ⚙️ 开机自启动配置（Windows 任务计划程序）

#### 1. 打开任务计划程序
```
按 Win + R → 输入 taskschd.msc → 回车
```

#### 2. 创建任务配置表

| 选项卡 | 配置项 | 设置值 | 说明 |
|--------|--------|--------|------|
| **常规** | 名称 | `Turing Smart Screen` | 任务名称 |
| **常规** | 描述 | `启动图灵副屏程序` | 可选描述 |
| **常规** | 安全选项 | ☑ **使用最高权限运行** | **必须勾选**（串口访问需要） |
| **常规** | 配置 | `Windows 10` 或 `Windows 11` | 根据系统选择 |
| **触发器** | 开始任务 | `登录时` | 用户登录后启动 |
| **触发器** | 延迟任务时间 | `30秒` | 让系统先启动完 |
| **触发器** | 启用 | ☑ 勾选 | 启用触发器 |
| **操作** | 操作 | `启动程序` | - |
| **操作** | 程序/脚本 | `D:\turing-smart-screen-python\.tssp\Scripts\pythonw.exe` | **无窗口Python** |
| **操作** | 添加参数 | `main.py` | 主程序文件 |
| **操作** | 起始于 | `D:\turing-smart-screen-python` | 工作目录 |
| **条件** | 网络连接 | ☑ 只有在以下网络连接可用时才启动 | 确保网络可用 |
| **条件** | 连接类型 | `任何连接` | 有线或无线都可以 |
| **条件** | 电源选项 | ☑ 只有在计算机使用交流电源时才启动 | **笔记本去掉勾选** |
| **设置** | 允许按需运行 | ☑ 允许按需运行任务 | 可以手动运行 |
| **设置** | 失败重试 | ☑ 如果任务失败，按以下频率重新启动 | 自动恢复 |
| **设置** | 重试间隔 | `5分钟` | 重试间隔时间 |
| **设置** | 最大重试次数 | `3次` | 最多重试3次 |

## 📺 屏幕预览
<div align="center">
  <img src="https://github.com/Subdue0/turing-smart-screen-python/raw/master/res/themes/MyTheme/preview.png" width="320"/>
  <br>
  <em>3.5″ IPS 实时系统监控副屏效果</em>
</div>

## 📋 后续操作
- 更改网卡名称：
  - Linux： 运行 `ip a` 找到网卡名称（如有线网卡`enp2s0`、无线网卡`wlan0`）→ 填进 `config.yaml` 的 `ETH、WLO` 项 → 重启进程
  - Windows： 运行 `ipconfig /all` 找到网卡名称（如有线网卡`以太网`、无线网卡`WLAN`）→ 填进 `config.yaml` 的 `ETH、WLO` 项 → 重启进程
- 退出进程：
    - Linux： `pkill -f "python main.py"`
    - Windows： 右键任务栏的小图标，选择 `Exit` 
- 查看实时日志：
    - Linux： `tail -f turing.log`
    - Windows： 直接查看项目根目录的turing.log文件
- 换主题：编辑 `config.yaml` 文件 → 添加主题到 `/res/themes` 中 → 重启进程
- 换字体：添加主题到 `/res/fonts` 中 → 编辑主题目录下的 `theme.yaml` 文件 → 重启进程
