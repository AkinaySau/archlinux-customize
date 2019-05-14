# archlinux-customize
Мой пакет для арча

```bash
sudo pacman -Suy slim awesome qterminal git lxappearance-gtk3 zsh luarocks sudo nginx php gnome-keyring
sudo luarocks install luafilesystem

ln -sf ~/.sau/.xinitrc ~
ln -sf ~/.sau/.Xresources ~
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
