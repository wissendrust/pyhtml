#!/bin/sh

echo "Actualizando repositorios..."
apk update && apk upgrade

echo "Instalando servidor gráfico Xorg..."
apk add xorg-server xf86-video-vesa xf86-input-libinput dbus

echo "Instalando entorno de escritorio Xfce..."
apk add xfce4 xfce4-terminal xfce4-screenshooter xfce4-taskmanager xfce4-pulseaudio-plugin thunar-volman 

echo "Instalando SLiM (gestor de inicio)..."
apk add slim

echo "Habilitando servicios..."
rc-update add dbus
rc-update add slim

echo "Creando archivo .xinitrc para iniciar Xfce..."
echo "exec startxfce4" > ~/.xinitrc

echo "Instalación completa. Reinicia y disfruta de Xfce en Alpine Linux."