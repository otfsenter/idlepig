# apple

```
  ____  _             _     ___              
 / ___|| |__    __ _ | |_  / _ \  _ __   ___ 
| |    | '_ \  / _` || __|| | | || '_ \ / __|
| |___ | | | || (_| || |_ | |_| || |_) |\__ \
 \____||_| |_| \__,_| \__| \___/ | .__/ |___/
                                 |_|         
```



## ss-local

To restart shadowsocks-libev after an upgrade:
  brew services restart shadowsocks-libev
Or, if you don't want/need a background service you can just run:
  /usr/local/opt/shadowsocks-libev/bin/ss-local -c /usr/local/etc/shadowsocks-libev.json


brew install shadowsocks-libev v2ray-plugin
#Then copy binaries to the App
cp -f /usr/local/opt/shadowsocks-libev/bin/ss-local  /Applications/ShadowsocksX-NG.app/Contents/Resources/ss-local
cp -f /usr/local/opt/v2ray/bin/v2ray  /Applications/ShadowsocksX-NG.app/Contents/Resources/v2ray-plugin
#And remove quarantine attribute to allow run binary
sudo xattr -d com.apple.quarantine '/Applications/ShadowsocksX-NG.app/Contents/Resources/v2ray-plugin'

## doing-设置terminal代理

打开ss之后，通过代理访问google

http_proxy=http://localhost:1087 curl -I http://google.com


## minikube mirrors

minikube start --image-mirror-country=cn   --iso-url=https://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/iso/minikube-v1.6.2.iso  --registry-mirror=https://mhzm7ggy.mirror.aliyuncs.com  --image-repository=registry.cn-hangzhou.aliyuncs.com/google_containers






## 更换brew镜像

科大真香实例：

```bash
git -C "$(brew --repo)" remote set-url origin https://mirrors.ustc.edu.cn/brew.git

git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git

git -C "$(brew --repo homebrew/cask)" remote set-url origin https://mirrors.ustc.edu.cn/homebrew-cask.git

if [ $SHELL = "/bin/bash" ] # 如果你的是bash
then 
    echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/' >> ~/.bash_profile
    source ~/.bash_profile
elif [ $SHELL = "/bin/zsh" ] # 如果用的shell 是zsh 的话
then
    echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/' >> ~/.zshrc
    source ~/.zshrc
fi

brew update
```

如果需要恢复原有镜像源的话（国内镜像源突然不能用了或版本不够新）

```bash
git -C "$(brew --repo)" remote set-url origin https://github.com/Homebrew/brew.git

git -C "$(brew --repo homebrew/core)" remote set-url origin https://github.com/Homebrew/homebrew-core.git

git -C "$(brew --repo homebrew/cask)" remote set-url origin https://github.com/Homebrew/homebrew-cask.git

# 找到 ~/.bash_profile 或者 ~/.zshrc 中的HOMEBREW_BOTTLE_DOMAIN 一行删除

brew update
```

如果不行的话可以依次尝试以下命令

```bash
brew doctor
brew update-reset
brew update
```


## Hide your computer name in ZSH/BASH

vim .zshrc

```bash
export PS1="[~]$ "; clear;
```

## 关闭登陆界面多个用户登陆


```bash
sudo defaults write /Library/Preferences/com.apple.loginwindow SHOWOTHERUSERS_MANAGED -bool FALSE
```

## 强开随航

```bash
defaults write com.apple.sidecar.display AllowAllDevices -bool true
defaults write com.apple.sidecar.display hasShownPref -bool true
```

## 环境变量配置

因为terminal每次只会加载.zshrc，所以必须要在.zshrc里面写alias和环境变量，才会每次重启终端生效配置

初始化的配置

```bash
alias t="ssh root@idlepig.cn"
alias ll="ls -l"
alias idlepig="cd /Users/username/docs/idlepig/source; source /Users/username/code/idlepig/bin/activate"

export PATH=/Users/username/code/idlepig/bin:/Users/username/Library/Python/3.8/bin:$PATH
```



## 苹果 电源适配器延长线缆


https://www.apple.com.cn/shop/product/MK122CH/A


## 调整鼠标速度

```bash
defaults write -g com.apple.mouse.scaling 18
```

terminal输入然后重启，已爽死，嫌快的调小数值就行

还有滚轮速度

```bash
defaults write -g com.apple.scrollwheel.scaling 1.2
```


