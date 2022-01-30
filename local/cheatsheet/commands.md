# Órdenes interesantes

## Redes

`hostname -I`      : IP de la máquina  
`nmcli device show`         : Mucha info de redes  
`nmcli device show` + `Tab` : Muestra dispositivos  
`ss -tulp`         : equivalente a netstat -putona  
`ip -br a`         : dptvos e IP

## Portapapeles

`pwd | xclip`      : Copia al portapales  
`ls $(xclip -o)`   : Pega del portapaeles  


## Bash

`!!`               : Repite la última orden  
`^e^am`            : Ídem cambiando e por am  
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


## Codificación
`echo "Hola"| base64`         : codificación
`echo "SG9sYQo=" | base64 -d` : descodificación

## Miscelánea
`browse p.pdf`     : abre p.pdf (terminal) 
`open p.pdf`       : abre p.pdf (GUI)

