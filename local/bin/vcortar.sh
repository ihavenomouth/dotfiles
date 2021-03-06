#!/bin/bash
desde=$( whiptail --inputbox "Cortar desde (00:05:01)" 10 30 --title "Cortar vídeo cortar.mkv" 3>&1 1>&2 2>&3)

if [ "$desde" == "" ];then
    exit 0
fi


hasta=$( whiptail --inputbox "Cortar hasta (00:05:50)" 10 30 --title "Cortar vídeo cortar.mkv" 3>&1 1>&2 2>&3)

if [ "$hasta" == "" ];then
    exit 0
fi

ffmpeg -i cortar.mkv -ss $desde -to $hasta -avoid_negative_ts 1 -c copy cortado.mkv
ffmpeg -i cortar.mkv -ss $desde -to $hasta -avoid_negative_ts 1 cortadoYRecodificado.mkv

# Para cortar desde hasta 5 segundos después
#ffmpeg -i 1.mkv -ss $desde -t 5 -c copy cortado.mkv
