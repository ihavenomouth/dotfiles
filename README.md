# dotfiles

Ficheros de configuración de mi terminal.  

Esta es una configuración útil para mí, no recomiendo que los use nadie salvo como inspiración para crear los suyos. Por si fuera de interés, utilizo Ubuntu Mate.  

## Lista de software installado en mi sistema

Este es el software que instalo en mi sistema que no suele venir preinstalado.  
   * figlet (mostrar texto en grande en la terminal)
   * translate-shell (traductor desde la terminal)
   * micro-editor (mi editor por defecto en la terminal)
   * nnn (para moverte muy rápido por los directorios)
   * conky (muestra información sobre el fondo de pantalla)
   * flameshot (capturas de pantalla)
   * yad (interfaces gráficas desde un shell script)
   * x11vncserver (compartir la pantalla en la red)
   * tmux (multiplexor de la terminal)
   
# Ficheros incluídos en este repositorio

Los ficheros y directorios de este repositorio incluyen configuraciones de las herramientas que utilizo. Indico a continuación algunos de los cambios realizados y el fichero de destino. Copia sólo aquello que te resulte de interés.

   * .nanorc
      * configuración de nano
      * Nºs de líneas, tamaño de tab a 3, señal indicando la columna 100, colores, etc.
   * .tmux.conf
      * Cambio Ctrl+b por Ctrl+a
      * Se divide el panel con Ctrl+a / o Ctrl+a -
      * Se entra en modo copy con Ctrl+a Espacio, en este modo se selecciona pulsando espacio y se copia con Intro.
      * Se rotan los *layouts*  con Ctrl+A AvPág.
   * .bashrc
      * Cambio el prompt
      * Función para iniciar nnn con n y que al salir nos *deje* en el directorio en el que estábamos
      * Añado el contenido del fichero bash_alias
      * Añado el contenido del fichero bash_export
   * local --> .local
      * cheatsheet (ficheros con algunos trucos)
      * dotfiles
         * dotfiles/bash_alias (alias para usar más cómodamente la terminal)
            * cd.., cd..., .., ...
            * cal (muestra el calendario como debe ser mostrado)
            * hrb y hr (muestran líneas en la terminal)
            * car --> cat (mi error de tecleo más común)
            * c (copia texto al portapapeles)
            * p (pega texto del portapapeles)
         * dotfiles/bash_export (opciones para mejorar la usabilidad, recomiendo probar las opciones una a una)
            * Cambio el editor por defecto a micro
            * Fuera telemetría
            * Páginas de man y less a color
            * Mejor autocompletado en el historial de órdenes
      * bin
         * bin/b (figlet para mostrar texto grande)
         * bin/calc (bc para cálculos rápidos en la terminal)
         * bin/bin2dec (convierte de binario a decimal)
         * bin/dec2bin (convierte de decimal a binario)
         * 
         * bin/cs (script para mostrar una cheatsheet)
         * bin/dicc (trans para traducciones desde la terminal, muestra mucha información, para algo conciso ver trad)
         * bin/g (busca en google usando w3m en la terminal)
         * bin/gotoaux (usa el alias goto para viajar rápidamente a los directorios que utilizo con frecuencia)
         * bin/hr (línea horizontal separadora)
         * bin/mergepdf (usa ghostscript para unir pdfs)
         * bin/trad (usa trans para traducciones rápidas y concisas desde la terminal)
         * bin/zim2md (exporta un fichero en el formato de zim-wiki al de markdown)
         * bin/compartirpantalla (comparte la pantalla actual por vnc, para las clases)
         * bin/cecho (un echo con algo de color)
         * bin/copiarf (copiar ficheros desde la terminal)
         * bin/cortarf (cortar ficheros desde la terminal. Cuidado, es potencialmente peligroso)
         * bin/pegarf (pegar ficheros desde la terminal)
         * bin/sinCaracteresProblematicos (elimina acentos, ñ, diéresis, etc)
         * bin/tamImagen (redimensiona una imagen)
         * bin/vaumentarVelocidad (aumenta la velocidad de un vídeo un 6% y un 10%)
         * bin/vconvertirGif (convierte un clip de vídeo a Gif animado)
         * bin/vcortar (crea un clip de vídeo recortando un vídeo más largo)
         * bin/vunir (une varios clips de vídeo que están en lista.txt en uno sólo)
   * config --> .config
      * conky (2 ficheros de configuración, ambos leen notas de ~/notes.txt)
         * conky.conf (información en el centro)
         * conky.conf.lateral (información a la derecha)
      * micro
         * settings.json
            * Tam tab = 3 espacios
            * Cambio de tab a espacios
            * Resaltado de la línea actual
         * plug/microzim
            * Mi plugin para crear ficheros zim-wiki en micro
         * syntax/zim-wiki
            * Mi fichero de resaltado de sintaxis para zim-wiki
      * nnn
      * zim
         * style.conf (cambio del horrible esquema de color por defecto)
         * Notebook.list (cambio de la ubicación de mi bloc de notas)
     
 
 
