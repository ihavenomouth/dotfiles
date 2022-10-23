# Órdenes interesantes

## Redes

`hostname -I`      : IP de la máquina  
`nmcli device show`         : Mucha info de redes  
`nmcli device show` + `Tab` : Muestra dispositivos  
`ss -tulp`         : similar a netstat -putona con -n muestra puertos (no nombres de serv)  
`ip -br a`         : dptvos e IP

## Portapapeles

`pwd | xclip`      : copia al portapales  
`ls $(xclip -o)`   : pega del portapaeles  


## Bash

`!!`               : repite la última orden  
`^e^am`            : ídem cambiando e por am  
`cp p.txt{,.bak}`  : cp p.txt p.txt.bak  
`$_`               : último parámetro de la orden anterior


## Carpetas compartidas

Montar una carpta de Windows (usa / en vez de \)  
`mount -t cifs -o username=usuario //PC01/myshare /mnt.`  


## Formatear unidad
`mkfs -t ntfs /dev/sdb1`  


## Hardware
`lshw`             : información sobre el hardware  
`blkid`            : UUID de los discos  
`lsblk`            : listado de los dispositivos de bloques  
`lsblk -e 7`       : listado de los dispositivos excluyendo loops  
`lsblk -f`         : Ídem mostrando los sistemas de archivos  


## Codificación
`echo "Hola"| base64`         : codificación  
`echo "SG9sYQo=" | base64 -d` : descodificación  


## Miscelánea
`browse p.pdf`     : abre p.pdf (terminal)  
`open p.pdf`       : abre p.pdf (GUI)  


## Mis órdenes
`b hola caracola`       : Muestra un mensaje en la terminal  
`bin2dec 1010`          : Convierte de binario a decimal  
`calc 37+58`            : Realiza cálculos  
`cecho i Hola`          : Muestra un mensaje en color  
`compartirpantalla`     : Comparte la pantalla por VNC  
`copiarf *.txt`         : Copia ficheros al portapapeles   
`cortarf *.txt`         : Corta ficheros (si no se pegan se pierden)  
`pegarf`                : Pega los ficheros copiados o pegados  
`cs`                    : Muestra chuletas  
`dec2bin 50`            : Convierte de decimal a binario  
`dicc omnipotente`      : Muestra la definición de una palabra (inglés y español)  
`g meneame.net`         : Abre un navegador en modo texto y va a la web especificada  
`goto`                  : Nos mueve rápidamente a un directorio  
`hr`                    : Escribe una línea compuesta por -  
`mergepdf p.pdf j.pdf`  : Une varios PDF en uno solo  
`sinCaracteresProblematicos` : Quita ñ, acentos, ç, etc.  
`tamImagen 50 i.png p.jpg`   : Reduce el tamaño un %50%. También cambia el formato  
`trad gathering`        : Traduce una palabra del inglés al español  
`vaumentarVelocidad`    : Aumenta la velocidad del vídeo output.mp4  
`vconvertirGif`         : Convierte un trozo de vídeo a gif  
`vcortar.sh`            : Extrae un trozo de vídeo de otro (con menú)  
`vrenombrar`            : Renombra los ficheros de vídeo del directorio  
`vsamsung v.mp4`        : Prepara vídeos para que se puedan ver en TV Samsung  
`vunir`                 : Une los vídeos que están indicados en el fichero lista.txt  
`zim2md`                : Convierte un documento ZIM a Markdown  

