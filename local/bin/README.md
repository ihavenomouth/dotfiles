# Utilidades incluidas

* b
* calc
* bin2dec
* dec2bin
* cecho
* cheat
* compartirpantalla
* copiarf
* cortarf
* pegarf
* cs
* dicc
* trad
* g
* gotoaux
* hr
* mergepdf
* v
* zim2md

## Consideraciones

### b
`b` utiliza `figlet` para mostrar un mensaje en pantalla. Lo llamé `b` por *banner* (cartel en inglés), pues me recuerda a un programa antiguo de MS-DOS.  

Ejemplo: `b "Hola caracola"`  

### calc, bin2dec y dec2bin

Todas las utilidades usan `bc` para realizar operaciones matemáticas (por defecto muestra sólo 3 decimales).  

Ejemplos:  
```
  calc 127/2
  calc 24*8
  calc 2^2 
```

`bin2dec` y `dec2bin` también usan `bc` por debajo y como el nombre indica sirven para pasar de decimal a binario y viceversa.  

Ejemplos:  
```
  bin2dec 10100
  dec2bin 20
```


### cecho

Muestra un mensaje en pantalla con color. Realmente no es un sustituto de echo, pero sirve para destacar 
un mensaje en la terminal.  

Uso: `cecho COLOR mensaje`  

COLOR:  
  * warning: amarillo cursiva y etiqueta
  * danger : rojo cursiva y etiqueta
  * info   : celeste cursiva y etiqueta
  * info2  : verde cursiva y etiqueta
  * i      : celeste
  * w      : amarillo 
  * d      : rojo 
  * bl bbl : negro
  * b bb   : azul
  * c bc   : celeste
  * y by   : amarillo
  * r br   : rojo
  * g bg   : verde
  * m bm   : magenta
  * wh bwh : blanco

Ejemplos:  
```
  cecho info $(hostname -I)
  cecho by "Mensaje en amarillo claro"
```

### cheat

Busca ejemplos de uso rápido en la web cheat.sh, que es un servicio similar a lo que ofrece la orden `tldr`.  

Uso: `cheat ORDEN`  


### compartirpantalla

Permite compartir la pantalla por vnc usando como servidor `x11vnc`, permite múltiples conexiones simultáneas en modo sólo visualización. La pantalla se transmite con un escalado del 75%.  

El script muestra también las ip del PC e instrucciones para conectarse con `vncviewer` y `remmina`.  


### copiarf, cortarf y pegarf

Permite copiar, cortar y pegar ficheros desde la terminal de una manera parecida a como lo hacemos en el escritorio. Hay que tener cuidado con `cortarf` porque si no pegamos los ficheros se perderán.

TO-DO: cambiar `cortarf` para que cree un fichero `tar` en `/tmp`, y que sea al usar `pegarf` cuando se borren del directorio original.

**Importante:** Si cortamos un fichero e inmediatamente después copiamos un fichero sin pegar el fichero cortado antes, el fichero cortado se perderá.

```
copiarf *.jpg
pegarf
cortarf hola.md
pegarf
```



### cs

`cs` proviene de *cheatsheet* (chuleta en inglés) y es un pequeño script que muestra unas notas que he recopilado de algunas herramientas y órdenes de Linux que son de utilidad, pero no suelo recordar.  
Si se ejecuta sin parámetros muestra todas las páginas que se pueden seleccionar.  

Ejemplo de uso: `cs tmux`  


### dicc

Usa `trans` para mostrar la definición de alguna palabra que desconozcamos. Busca la traducción en Bing, Google translator, etc.  

Uso: `dicc harrowing`  

El paquete usado se llama [translate-shell](https://github.com/soimort/translate-shell)


### trad

Traduce las palabras que recibe usando Google translator.

Uso: `trad It was a harrowing night`  


### g

Busca en google lo que indiquemos usando el navegador web de terminal `w3m`. No especialmente interesante, pero alguna vez puede ser útil.  

### gotoaux

En el fichero `~/.local/dotfiles/bash_alias` tengo creado el siguiente alias: `alias goto='. gotoaux'`  

Ese `.` básicamente es equivalente a usar la orden `source` que hará posible que las órdenes que se ejecuten en `gotoaux` tengan influencia en la shell actual (no se ecjecutará en una subshell) y por lo tanto permitirá cambiar el directorio de trabajo.  

De hecho, eso es precisamente lo que hace `gotoaux`, muestra un listado de directorios para movernos rápidamente por ellos. Internamente utiliza `whiptail` para mostrar la interfaz del usuario.    

### hr

hr es una muy pequeña adaptación de: [hr](https://github.com/LuRsT/hr).

Lo que hace es borrar la línea en la que se ejecuta (esa es mi modificación sobre el original) e imprime una línea repitiendo el caracter `-`. Es similar a la etiqueta de HTML `<hr>`.

Además en el fichero `~/.local/dotfiles/bash_alias` tengo creado dos alias:
```
alias hrb="hr ' '"
alias hr2="hr ' ' - ' '"
```

El primero borra la línea actual, pero no dibuja la línea recta. El segundo sí crea la línea, pero dejando una línea en blanco arriba y otra abajo.

### mergepdf

Une todos los pdf que hay en el directorio desde el que se invoca en un único fichero.


### v

No se recomienda usar de momento. La idea es usar `xrandr` y otras utilidades para crear un monitor virtual que permita extender la pantalla y luego usar `VNC` para compartirla y poder visualizarla en una tablet o móvil. Lo he probado y funciona, pero me desconfigura la configuración del HDMI. Hay que darle una vuelta y sobre todo ver si merece la pena usarla.

### zim2md

Usa las opciones de exportación de Zim para exportar una página en formato Markdown.


