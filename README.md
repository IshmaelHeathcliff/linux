## add netease repositories

add texts below to /etc/apt/sources.list on 18.04LTS

```
deb http://mirrors.163.com/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ bionic-security main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ bionic-backports main restricted universe multiverse
```

## vim 8.x on Ubuntu

```
sudo add-apt-repository ppa:jonathonf/vim
```

## install latest git and upgrade

```
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt upgrade
```

## Chinese and remove nano

```
sudo apt-get install language-pack-zh-hans
sudo apt remove nano
sudo apt install cowsay
```

## install nodejs

```
sudo apt install nodejs
```

## install ohmyzsh

install fonts in fonts/ on your platform

```
./install.sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open
rm .zshrc
mv .zshrc* .zshrc
source ~/.zshrc
```

## install vim plugs

```
// In vim
:PlugInstall
```

