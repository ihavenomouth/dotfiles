:!cal          ejecutar una orden cal  
:shell         abre una shell  
3!!:tr x y     pasa a tr las tres líneas desde el cursor  

:.w p.txt      guarda la línea actual al fichero p.txt  
:2,5w p.txt    guarda las líneas 2 a la 5 al fichero p.txt  
:.,+6w! p.txt  guarda las línea actual y las 6 siguientes sobreescribiendo  

x              borrar un caracter  
r-             reemplaza el caracter por un -  

dw             borrar una palabra  
3dw            borrar 3 palabras  
dd             borrar línea  
3dd            borrar 3 líneas  
d0             borrar hasta el principio de la línea  
d$             borra hasta el final de la línea  

y              copiar  
p              pegar  
u              deshacer  
Ctl+R          rehacer  
.              repite el último comando  

3iJA (ESC)     inserta JAJAJA  
30i- (ESC)     inserta ------------------------------  
o              añade una nueva línea  
r p.txt        inserta el contenido del fichero  

R              modo sobreescritura  

G              va al final del documento  
234G           va a la línea 234  
gg             va al principio del documento  
%              va a corchete o paréntesis emparejado  
0              principio de la línea  
$              final de la línea  

/              buscar  
`*`              busca la palabra actual (siguiente)  
`#`              busca la palabra actual (anterior)  
:s/xx/yy/g     cambia todas las apariciones en la línea  
:%s/xx/yy/g    cambia viejo por nuevo en todo el doc  
:3,6s/xx/yy/g  cambia todas las apariciones entre las líneas 3 y 6  

:set nu        ver números de línea  


