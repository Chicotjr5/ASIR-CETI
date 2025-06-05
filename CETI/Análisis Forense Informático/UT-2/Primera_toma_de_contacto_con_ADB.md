## Índice

- [Introducción](#introducción)
- [Primera toma de contacto](#primera-toma-de-contacto)
- [Acceder al móvil](#acceder-al-móvil)
- [Borrar patrón de desbloqueo del móvil](#borrar-patrón-de-desbloqueo-del-móvil)

## Introducción
En esta práctica se va a instalar adb. 
Esta es una herramienta de línea de comandos que nos permite comunicarnos con nuestro dispositivo móvil y realizar multitud de acciones: 

- Acceso y navegación por el sistema de archivos 
- Control remoto del móvil 
- Ejecución de comandos

---

### Primera toma de contacto
Para instalarlo en nuestro equipo, vamos al siguiente [**enlace**](https://developer.android.com/tools/releases/platform-tools?hl=es-419#downloads)) y lo descargamos.
Para usarlo, nuestro móvil ha de estar conectado al equipo vía cable USB y tenemos que abrir un terminal

Para comprobar que nuestro dispositivo esta realmente conectado y es visible por adb ejecuto:

`adb devices`

![[2.1.1.png]]

↓

![[2.2.png]]

Para ver si estoy como **root** o no ejecuto:

`adb root`

![[2.2 1.png]]


En mi caso, el dispositivo no esta rooteado.

---

### Acceder al móvil

Con adb se puede acceder a la **shell** del móvil y desde allí, podemos navegar por el sistema y ejecutar algunos comandos.

`adb shell`

![[3.1.png]]


Si por ejemplo hago un **ls** puedo ver la estructura de directorios:


![[3.2.png]]


En un principio, se puede acceder a todos (o casi todos) los directorios del móvil, pero en aquellos directorios donde se necesitan permisos de root, no podemos acceder.

![[3.3.png]]

Pero habrá otras que si y de hecho, podemos extraer información, como en el siguiente caso:

`adb pull /system/media/wallpaper/walppaper_group/00MoltenGlass`

![[3.4 1.png]]

Y aquí tenemos el contenido de ese directorio:

![[3.5.png]]

---

### Borrar patrón de desbloqueo del móvil

El archivo que contiene el patrón de desbloqueo es el **/data/system/gesture.key** pero debido a nuestra falta de privilegios, no podemos acceder a él, por lo que no podemos borrarlo tampoco.

![[3.6.png]]

↓

![[3.7.png]]

La forma de borrar esa clave sería rooteando el teléfono, que en mi caso al tener un **Xiaomi Redmi Note 9**, debería de hacerlo con la aplicación **MI Unlock**.


