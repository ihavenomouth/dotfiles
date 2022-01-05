# Repositorio

`git add ficheros`
`git commit -m "mensaje"`     : sube los ficheros añadidos en el add  

`git tag -a "v1.5.0-beta" -m "version v1.5.0-beta"`  

`git push repo`               : sube los cambios al repositorio  
`git push repo --tags`        : añade el tags al repositorio  (crea un fichero comprimido con la versión, pero no los cambios)


`git status`  
`git checkout HEAD ficheros`  : recuperar un fichero local eliminado desde github  

`git clone url`               : descarga un repositorio remoto  
`git init repo`               : crea un repositorio local  
`git remote add nombre url`   : crea un alias para el repositorio  
`git pull repo`               : descarga los cambios del repositorio  


# Ejemplo

*Creo el repositorio en GitHub*
~~~
git remote add x4 https://github.com/ihavenomouth/x4.git  
git pull x4  
git add *.c  
git commit -m "yeah"  
ssh git@github.com  # iniciamos sesión en github
git push x4 --tags  
~~~

# Configurar acceso por SSH

Ejecutar en `~/.ssh`:  
```ssh-keygen -t ed25519 -C "javmanfer@gmail.com"  ```

En las settings de la cuenta de Github, seleccionar SSH y nueva clave, ponerle un título y copiar el contenido de la clave pública que genero el `ssh-keygen`.

Acceder por ssh para probar:**  
```  ssh git@github.com  ```

Añadimos el repositorio (con el enlace ssh, no https)  
```  git remote add x4 git@github.com:ihavenomouth/x4.git  ```

Ya podemos hacer los push sin tener que hacer login cada vez  
```  git push git@github.com:ihavenomouth/x4.git ```
