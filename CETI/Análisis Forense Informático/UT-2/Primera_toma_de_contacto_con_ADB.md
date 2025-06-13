<details>
  <summary><h2>Índice</h2></summary>

- [Introducción](#introducción)
- [Primera toma de contacto](#primera-toma-de-contacto)
- [Acceder al móvil](#acceder-al-móvil)
- [Borrar patrón de desbloqueo del móvil](#borrar-patrón-de-desbloqueo-del-móvil)

</details>

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

```bash
adb devices
```

![2 1 1](https://github.com/user-attachments/assets/162658ba-caba-4a6f-b32d-329d7e10e6a8)


↓

![2 1](https://github.com/user-attachments/assets/02b5beb6-646c-482e-bc96-41db392408c1)



Para ver si estoy como **root** o no ejecuto:

```bash
adb root
```

![2 2](https://github.com/user-attachments/assets/9e4ff9e5-e3b2-4eb4-b8ee-d5be26a83fb0)



En mi caso, el dispositivo no esta rooteado.

---

### Acceder al móvil

Con adb se puede acceder a la **shell** del móvil y desde allí, podemos navegar por el sistema y ejecutar algunos comandos.

```bash
adb shell
```

![3 1](https://github.com/user-attachments/assets/5f05fcfa-092b-478f-93bb-36ce61634ae4)



Si por ejemplo hago un **ls** puedo ver la estructura de directorios:


![3 2](https://github.com/user-attachments/assets/7417fa74-d3c8-4ff6-ad8d-a1a4c88cde2b)



En un principio, se puede acceder a todos (o casi todos) los directorios del móvil, pero en aquellos directorios donde se necesitan permisos de root, no podemos acceder.

![3 3](https://github.com/user-attachments/assets/8c42930b-756c-4384-8054-e38e5a42c477)


Pero habrá otras que si y de hecho, podemos extraer información, como en el siguiente caso:

```bash
adb pull /system/media/wallpaper/walppaper_group/00MoltenGlass
```

![3 4](https://github.com/user-attachments/assets/53dd243a-d5fd-4f19-8c53-5b27c9ca1b92)


Y aquí tenemos el contenido de ese directorio:

![3 5](https://github.com/user-attachments/assets/ad80516f-2eaa-4692-bc38-6f1ac1fe2ca5)


---

### Borrar patrón de desbloqueo del móvil

El archivo que contiene el patrón de desbloqueo es el **/data/system/gesture.key** pero debido a nuestra falta de privilegios, no podemos acceder a él, por lo que no podemos borrarlo tampoco.

![3 6](https://github.com/user-attachments/assets/a5eb2d1b-4543-4746-8456-29bf1062f7c6)


↓

![3 7](https://github.com/user-attachments/assets/0ae3ad0e-4b53-451e-9f9a-628b13c1650f)


La forma de borrar esa clave sería rooteando el teléfono, que en mi caso al tener un **Xiaomi Redmi Note 9**, debería de hacerlo con la aplicación **MI Unlock**.


