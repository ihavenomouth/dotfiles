# Ventanas

Ctrl + A = prefijo (pr)

pr + /         : `divide la ventana verticalmente`
pr + -         : `divide la ventana horizontalmente`
pr + AV.Pág    : `siguiente layout`

pr + c         : `crea nueva ventana`
pr + n         : `pasa a la siguiente ventana`
pr + w         : `menú de selección de ventana`


# Copiar y pegar
pr + ESPACIO   : `modo selección`
                 `ESPACIO empieza la selección`
                 `ENTER copia la selección`
pr + v         : `copia la selección`

# Copiar y pegar (con el ratón y el botón central)
Deja pulsado SHIFT tanto al seleccionar como al pegar

Se puede copiar al portapapeles (no al buffer del ratón) seleccionando y pulsando ENTER antes de deseleccionar.

# Sesiones (línea de órdenes)
tmux new -s nombre          : `crea una sesión con nombre`
pr + d                      : `detach la sesión actual`

tmux attach                 : `se conecta a la última sesión`
tmux ls                     : `lista las sesiones guardadas`
tmux kill-session -t sesión : `mata la sesión que se indica`

