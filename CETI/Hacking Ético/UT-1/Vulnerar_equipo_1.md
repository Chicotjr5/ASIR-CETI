## Índice

- [Introducción](#introducción)
- [Preparación](#preparación)
- [Escaneo de la red](#escaneo-de-la-red)
- [Búsqueda de vulnerabilidades](#búsqueda-de-vulnerabilidades)
- [Realizar ataque](#realizar-ataque)

---

## Introducción

En estas prácticas se van a realizar ataques a máquinas vulnerables con el uso de diferentes técnicas.

En este caso, se realiza un ataque de fuerza bruta al servicio smb de un máquina virtual Windows 7 cuyo usuario es **amadapa**

---
### Preparación

Antes de hacer nada, tenemos que ver quiénes somos y donde estamos. 
Con el comando **whoaim** veo que usuario estoy usando. 
En este caso, el usuario root, así que tengo permisos de administrador dentro de mi sistema. 
Y con el comando **ip a** puedo ver que dirección IP tengo, siendo esta la 10.0.2.4/24, lo que hace ver que estamos en la red 10.0.2.0/24.

`whoami`
`ip a`

![1 1](https://github.com/user-attachments/assets/817bec57-a180-4718-9867-8a1844598aa2)


---

### Preparación

Ya que estoy en la red **10.0.2.4/24**, haré un escaneo a la misma para ver que equipos están conectados a ella. Usaré el comando:

`netdiscover -r 10.0.2.0/24`

![1 2](https://github.com/user-attachments/assets/e0b59a04-96ef-4f30-9ed4-67009e6464e6)


De estos equipos, el más interesante es el **10.0.2.6**, porque el resto son servidores de VirtualBox:
10.0.2.1 - Gateway
10.0.2.2 - DNS
10.0.2.3 - DHCP

Compruebo con un ping si tengo conexión hacia ese equipo.

`ping 10.0.2.6 -c2`

![1 3](https://github.com/user-attachments/assets/8e80bd51-9e55-4968-8b40-75f8a331d831)


El **TTL** que me ha dado el ping es de **128**. 
El TTL es un valor en los paquetes de datos que indica cuánto tiempo deben permanecer en la red antes de ser descartados. 
En equipos **Linux el TTL suele ser de 64**, mientras que **en Windows es de 128** así que el equipo objetivo es un equipo Windows.

---

### Búsqueda de vulnerabilidades

Empezaré realizando un escaneo de puertos con **nmap**.

Usaré el siguiente comando:

`nmap 10.0.2.6 -Pn -O -p-`

**-Pn**
- No realiza el primer ping

**-O**
- Habilita la detección del sistema operativo del objetivo

**-p-**
- Realiza el escaneo de puertos en orden secuencial en lugar de aleatorio

![2 2](https://github.com/user-attachments/assets/d482d922-70f4-4c6c-acc6-48e25eac6c73)


La información obtenida es la siguiente:
**Sistema operativo** 
- Windows 7 SP1

**Servicios más relevantes**
- smb - 445
- NetBios - 139

Otra forma de realizar escaneos con nmap es con la utilización de los propios scripts que tiene nmap, los cuales se encuentran en **/usr/share/nmap/scripts.**

![2 4](https://github.com/user-attachments/assets/fb7d81d8-b485-4374-9eaa-630f4729b27d)


---

### Realizar ataque

Ya se ha recopilado información del objetivo, sabiendo que es un equipo Windows 7 SP1, que tiene el puerto 445 (servicio smb) abierto.
El ataque va a consistir en un ataque de fuerza bruta al inicio de sesión del servicio **smb**


Generaré un diccionario de contraseñas propio con el comando:
`crunch 7 7 amdp -o dic.txt.` 

Este comando lo que hará será generar combinaciones de palabras, con las letras amdp, que tengan una longitud mínima y máxima de 7 caracteres guardándolas en el fichero dic.txt.

![3 1](https://github.com/user-attachments/assets/cf81241e-541c-4d88-8e53-e9fce85ae6ec)


Para realizar el ataque, usaré la herramienta **crackmapexec** 

`crackmapexec smb 10.0.2.6 -u amadapa -p dic.txt –local-auth`

En este comando, se usa la herramienta **crackmapexec**, diciéndole que se usará el **protocolo smb** para escanear el equipo **10.0.2.6**, indicando que el **usuario es amadapa** y para las contraseñas, que use el archivo **dic.txt**, indicando que se debe **usar la autenticación local**, en lugar de la autenticación de dominio.

![3 2](https://github.com/user-attachments/assets/b88509e8-cbf5-4071-8bb8-0fc95d732e33)


↓

![3 3](https://github.com/user-attachments/assets/0445d2ef-ff62-459d-af04-d7742020f795)


En caso de no saber el nombre del usuario, se podría generar otro diccionario de contraseñas y usarlo en el comando del ataque:

`crackmapexec smb 10.0.2.6 -u dic2.txt -p dic.txt –local-auth

![3 4](https://github.com/user-attachments/assets/e5088f40-3f02-4e48-96a6-b62d42aae79b)


