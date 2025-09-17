# 图灵智显监控屏 3.5″ | 一键部署

![屏幕预览](https://github.com/Subdue0/turing-smart-screen-python/raw/master/res/themes/MyTheme/preview.png)

---

## 🚀 一键启动

| 步骤 | 命令 |
| ---- | ---- |
| ① 下载源码 | `git clone https://github.com/Subdue0/turing-smart-screen-python.git` |
| ② 进入目录 | `cd turing-smart-screen-python` |
| ③ 安装依赖（Python≥3.8） | `python3 -m venv .tssp && source .tssp/bin/activate && pip install -r requirements.txt` |
| ④ 后台运行监控 | `nohup python main.py &` |

---

## 📋 后续操作
- 查看实时日志：`tail -f log.log`
- 换主题 / 改网络接口：编辑 `config.yaml` 添加主题到 `\res\themes` → 重启进程