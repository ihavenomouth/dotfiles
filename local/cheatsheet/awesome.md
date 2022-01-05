# Teclas principales

Tecla de windows = `Mod`

`Mod + s`         : atajos de teclado   
`Mod + w`         : Menú awesome  
`Mod + Enter`     : Terminal  
`Mod + r`         : Ejecutar...  


## Tags y ventanas
`Mod + PgUp`      : Anterior tag  
`Mod + PgDown`    : Siguiente tag

`Mod + Left`      : Foco a la siguiente ventana  
`Mod + Right`     : Foco a la anterior ventana

`Mod + f`         : Ventana a pantalla completa  
`Mod + m`         : (Des)Maximizar ventanas  
`Mod + n`         : Minimizar ventanas  
`Mod + Ctrl + r`  : Restaurar ventana minimizada  


## Layouts
`Mod + Space`     : Rota los layouts
`Mod + h`         : Incrementa las columnas del layout  
`Mod + l`         : Decrementa las columnas del layout  


# Ficheros de configuración

## rc.lua

Cambiamos la línea 52 para que contenga:

`beautiful.init("/home/javier/.config/awesome/theme.lua")`

He quitado varios *layouts* comentando `awful.layout.suit.max` y otras líneas (cerca de la 69)

Los tags por defecto son 9, yo los he cambiado a sólo 3 (línea 193)


## theme.lua
En la línea 278 modifico el ancho del menú: `theme.menu_width  = dpi(350)`


