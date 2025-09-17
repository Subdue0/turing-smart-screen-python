# 图灵智显监控屏 3.5″ | 一键部署

![preview](https://raw.githubusercontent.com/Subdue0/turing-smart-screen-python/main/res/themes/MyTheme/preview.png)

```bash
# 1. 下载源码
git clone https://github.com/Subdue0/turing-smart-screen-python.git \
&& cd turing-smart-screen-python

# 2. 安装依赖（Python≥3.8）
python3 -m venv .tssp \
&& source .tssp/bin/activate \
&& pip install -r requirements.txt

# 3. 后台启动监控皮肤
nohup python main.py &