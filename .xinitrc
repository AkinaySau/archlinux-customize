#!/bin/sh
## Default .xinitrc ####################################################################################################
userresources=${HOME}/.Xresources
usermodmap=${HOME}/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
## END Default .xinitrc ################################################################################################


#gnome-keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

#xautolock -time 10 -locker i3lock-monitor &

## Переключение языков ru-en ###########################################################################################
exec setxkbmap -layout us,ru -variant -option grp:alt_shift_toggle,terminate:ctrl_alt_bksp &

## Compton - красивости ################################################################################################
exec compton --config ~/.sau/compton.conf &

## Иконка звука ########################################################################################################
volumeicon &

## Polkit ##############################################################################################################
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

## Зпускаем awesome-wm
exec awesome
