# archlinux-customize
Мой пакет для арча

```bash
sudo pacman -Suy slim awesome qterminal git lxappearance-gtk3 zsh luarocks sudo nginx php gnome-keyring volumeicon polkit-gnome
sudo luarocks install luafilesystem

ln -sf ~/.sau/.xinitrc ~
ln -sf ~/.sau/.Xresources ~
ln -sf ~/.sau/compton.conf ~/.config/compton.conf

yaourt --noconfirm -S i3lock-fancy-multimonitor-git 

```

## Иконки [Ark](https://github.com/horst3180/arc-icon-theme#installation)
```bash
cd /tmp 
git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install
cd
``` 
## Темы
```bash
yaourt -S zuki-themes --noconfirm
```

## Структура
Структура репозитория:
 - /data - дирректория с данными которые будут генерироваться скриптами
 - /awesome-theme - тема awesome-wm 


## Awesome
 - **./awesome-theme** - тема для awesome
 - **** - 
 
## Скрипты
В дирректории **./bin** находятся вспомогательные скрипты
 - create-mysql-user-and-db - создание новой БД, пользователя и пароля.
 - **create-project-keys** - запрашивает имя проекта и создаёт, в дирректории в которой находится пользователь, файл **\*.keys** куда записывает данные о новом проекте (логин и пароль админа, генерит название и логин БД)  

### ./configs
Пример конфигурации для: 
 - nginx
 - php
 - unbound


##### [more](http://sollus-soft.blogspot.com/2017/03/awesome-wm-4.html)
