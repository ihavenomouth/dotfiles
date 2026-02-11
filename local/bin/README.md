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
* d
* dicc
* trad
* g
* git-up
* gotoaux
* hr
* mergepdf
* sinCaracteresProblematicos
* tamImagen
* v
* vaumentarVelocidad
* vconvertirGif
* vcortar
* vrenombrar
* vunir
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


### d
Simplemente abre dolphin en el directorio actual (en una ventana nueva, en segundo plano, sin mostrar mensajes en la shell)
```dolphin --new-window . & &>/dev/null```


### dicc

Usa `trans` para mostrar la definición de alguna palabra que desconozcamos. Busca la traducción en Bing, Google translator, etc.  

Uso: `dicc harrowing`  

El paquete usado se llama [translate-shell](https://github.com/soimort/translate-shell)


### trad

Traduce las palabras que recibe usando Google translator.

Uso: `trad It was a harrowing night`  


### g

Busca en google lo que indiquemos usando el navegador web de terminal `w3m`. No especialmente interesante, pero alguna vez puede ser útil.  

### git-up

Actualiza un repositorio git local con los cambios realizados y los sube a Git Hub. Si el directorio
en el que nos encontramos no es la raíz del proyecto irá subiendo en la estructura de ficheros
hasta encontrarlo.

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

### sinCaracteresProblematicos

Recibe líneas de texto por una tubería y realiza unas sustituciones de caracteres potencialmente problemáticos por otros. Por ejemplo, quita los acentos y diéresis de las vocales, cambia Ñ por N y Ç por ç.  

Este script viene propiciado porque `tr` tiene dificultades para gestionar caracteres multibyte (UTF-8) y sólo se usa en contadas ocasiones (por ejemplo al ir a crear usuarios en bloque).  

```
echo "Hólá pingüíÑo çÁjón" | sinCaracteresProblematicos
Hola pinguiNo cAjon
```

Hay que tener en cuenta que usa sustituciones en la shell (*bashismos*), pero comentado se puede encontrar al final la manera de realizar lo mismo usando `sed`.  

TODO: Completar la funcionalidad para que funcione parecido a `cat`, que si recibe el nombre de un fichero coja las líneas a sustituir del fichero en vez de usar la tubería.  

### tamImagen

Usa el paquete imagemagick para redimensionar una imagen (aumentarlo o disminuirlo). También puede ser usada para cambiar el formato del fichero.  

USO: tamImagen 50 imgOrig.png imgRecortada.jpg`  

### v

No se recomienda usar de momento. La idea es usar `xrandr` y otras utilidades para crear un monitor virtual que permita extender la pantalla y luego usar `VNC` para compartirla y poder visualizarla en una tablet o móvil. Lo he probado y funciona, pero me desconfigura la configuración del HDMI. Hay que darle una vuelta y sobre todo ver si merece la pena usarla.

### vaumentarVelocidad

Usa ffmpeg para recoger el fichero output.mp4 y crear dos copias del mismo un 10% más rápida y un 6% más rápida (sin modificar mucho el audio para que no suene más agudo como sí hace el OBS y otros reproductores).

FIXME: Hay que retocar el código del script para cambiar cualquier parámetro. Lo ideal es que por parámetros se pudiera establecer el valor por el que se quiere acelerar el vídeo.

### vconvertirGif

Un script muy sencillo, pero que habría que retocar para convertir un clip de vídeo a gif animado (8 fps).  

FIXME: Hay que retocar el código del script para cambiar cualquier parámetro.

### vcortar

Muestra un menú que pregunta desde qué instante a qué instante se quiere extraer de un fichero de vídeo mayor.

### vrenombrar

Warning: No se recomienda su uso.  

Es un script *sucio* que lo que hace es cambiar el nombre de los ficheros .mkv que se encuentren en el directorio actual para que se llamen 1.mkv, 2mkv 3.mkv, etc. Esto es útil para unir todos los clips de un vídeo grabado con OBS en un único fichero.

### vunir

Une todos los clips de vídeo que hay recogido en lista.txt en un único archivo de vídeo.

### zim2md

Usa las opciones de exportación de Zim para exportar una página en formato Markdown.



