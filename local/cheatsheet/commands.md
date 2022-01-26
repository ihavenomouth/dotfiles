# Órdenes interesantes

## Redes

`hostname -I`      : IP de la máquina  
`nmcli device show`         : Mucha info de redes  
`nmcli device show` + `Tab` : Muestra dispositivos  
`ss -tulp`         : equivalente a netstat -putona  

## Portapapeles

`pwd | xclip`      : Copia al portapales  
`ls $(xclip -o)`   : Pega del portapaeles  


## Bash

`!!`               : Repite la última orden  
`^e^am`            : Ídem cambiando e por am  
`cp p.txt{,.bak}`  : cp p.txt p.txt.bak  


## Carpetas compartidas

Montar una carpta de Windows (usa / en vez de \)
`mount -t cifs -o username=usuario //PC01/myshare /mnt.`  


## Formatear unidad
`mkfs -t ntfs /dev/sdb1`  
