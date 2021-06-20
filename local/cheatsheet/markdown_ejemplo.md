Introducción
============

Este es un fichero de ejemplo de **Markdown** (negrita).

Como se puede ver es *bastante* (cursiva) sencillo e intuitivo, sin embargo,
también hay que tener en cuenta ciertas cosillas que podrían
despistarnos.
Por ejemplo, no es nada intutitivo el insertar un retorno
de carro en nuestro párrafo.

Esta es una  
línea partida.

Varias líneas en blanco
\
\
\


Listas
------

Si queremos crear una **lista**, simplemente usamos el símbolo *
Por ejemplo:
* Hola
* Caracola
* Adiós
* Blancaflor

La **lista numerada** no es más complicada:
1. Hola
2. Caracola
3. Adiós
4. Blancaflor

Ahora una línea para separar el siguiente apartado.

-----------------------------------

Tablas
------


Cabecera 1 | Cabecera 2
-----------|:---------:
Dato 1     | Dato 2
Dato 3     | *Dato 4*
*Dato 5*     | Dato 6


Citas y monoespaciado
---------------------

Una cita es algo sencillo de añadir, basta con usar el símbolo >

Ejemplo:
> Javier siempre nos dice que debemos respetar las licencias
> de software.

Para añadir código simplemente usaremos dos tabuladores antes del párrafo.
    #!/bin/bash
    echo "Hola caracola" > /dev/null
    ls -la | tr -s " " | cut -d " " -f1

Otra manera diferente
~~~
#!/bin/bash
echo "Hola caracola" > /dev/null
ls -la | tr -s " " | cut -d " " -f1
~~~

También podemos añadir algo de código en mitad de una línea. Por ejemplo
usaremos `echo` para imprimir un mensaje en la pantalla.


