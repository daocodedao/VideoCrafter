
# 简介

## 原项目
https://github.com/AILab-CVC/VideoCrafter



# 安装
## 环境 

```
python3.10 -m venv venv_video_crafter
source venv_video_crafter/bin/activate
pip install -r requirements.txt
```

## 启动
```
source venv_video_crafter/bin/activate
python gradio_app.py
```


## 代理

```
# 77 代理

git config --global http.proxy http://192.168.0.77:18808
git config --global --unset http.proxy


```


# 工具

## 查看网速
```
nethogs
```



## frp
```
videocrafter_iface.launch(share=False, server_port=8781)



cat /data/work/frp/frpc.ini 
vim /data/work/frp/frpc.ini 

[ssh-video-crafter]
type = tcp
local_ip = 127.0.0.1
local_port = 8781
remote_port = 8781
use_encryption = false
use_compression = false

# 重启frp
sudo supervisorctl reload

```