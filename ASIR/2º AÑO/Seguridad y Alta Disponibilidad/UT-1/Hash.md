## Parte 1 

### Descarga e instalación de Kali

Para poder hacer esta práctica, necesitamos descargarnos la máquina virtual de Kali 
Linux. 
Iremos a su [página web](https://www.kali.org/get-kali/#kali-virtual-machines) y descargaremos la máquina virtual de 64 bits para Virtualbox. 
Una vez descargada, importaremos la máquina a Virtualbox y ya podremos empezar a trabajar con ella.

<img width="373" height="394" alt="image" src="https://github.com/user-attachments/assets/f786eb36-9a48-44c4-b485-413bfa993e6c" />

---

### Descarga e inicialización de Nessus 

Una vez iniciada la máquina, iremos a la página de [Tenable](https://www.tenable.com/downloads/nessus?loginAttempted=true) y nos descargaremos el software **Nessus**. 

Una vez descargado, tenemos que descomprimirlo. 
Lo haremos usando el comando:

```bash
dpkg -i Nessus-10.6.1-debian10_amd64.deb 
```

<img width="174" height="159" alt="image" src="https://github.com/user-attachments/assets/d2f4e097-3b75-4766-8def-cb1c0e84c189" />

↓

<img width="471" height="63" alt="image" src="https://github.com/user-attachments/assets/fa24a6d0-a846-43a8-94f1-b11e67c8d383" />

Una vez descomprimido, tendremos que activar el servicio de Nessus, usando el siguiente comando:

```bash
/bin/systemctl start nessusd.service
```

<img width="427" height="52" alt="image" src="https://github.com/user-attachments/assets/e7d6c821-d5ba-4844-a7bf-281394a5f5ba" />

Ahora accederemos a la interfaz gráfica de Nesuss, poniendo **https://kali:8834** en el navegador. 

<img width="289" height="69" alt="image" src="https://github.com/user-attachments/assets/20ec5e86-3fbc-4b56-b93b-96dbcf1f4b58" />

Cuando queremos acceder, nos sale un mensaje de esta página no es segura del todo, pero le damos a **Advanced** con lo que nos saldrá otro aviso de que no es recomendable seguir con la conexión, pero le damos a **Accept the Risk and Continue**.

<img width="384" height="169" alt="image" src="https://github.com/user-attachments/assets/15d698f4-1aa8-45c3-b6f4-5296a1b9d2b0" />

↓

<img width="631" height="241" alt="image" src="https://github.com/user-attachments/assets/bcd4f587-d911-45ad-a700-740aa8866038" />

Y nos sale la pantalla de inicio de Nessus.

<img width="343" height="447" alt="image" src="https://github.com/user-attachments/assets/ca5f8494-4b27-4151-8303-ffce4f9a6e00" />

Ahora nos registraremos con nuestra cuenta de educacyl, porque si no, no nos deja acceder. 

Marcamos la opción de **Registrarse a Nessus Essentials** y ponemos nuestra cuenta de correo para que nos dé el **código a activación**. 

<img width="244" height="315" alt="image" src="https://github.com/user-attachments/assets/05e93bcc-c416-4332-91c2-319ba720156b" />

↓

<img width="238" height="327" alt="image" src="https://github.com/user-attachments/assets/2a51bc49-b46d-4513-99dd-6b1bd29dced4" />

↓

<img width="228" height="199" alt="image" src="https://github.com/user-attachments/assets/23568786-e5d2-4c87-8f98-04ed0db230fc" />

Creamos nuestra cuenta de usuario.

<img width="278" height="370" alt="image" src="https://github.com/user-attachments/assets/02454d37-e022-4a26-b431-d51b3b9c4758" />

Y se empiezan a descargar los plugins necesarios para su funcionamiento. 

<img width="394" height="332" alt="image" src="https://github.com/user-attachments/assets/f9d9d864-093c-4437-b565-4d4d82dd789a" />

Una vez parece que ha terminado, seguirá instalando plugins por un mínimo de 30 minutos y un máximo de 2 horas. 

<img width="368" height="196" alt="image" src="https://github.com/user-attachments/assets/6a999145-0338-47cb-8560-fcc39190d7b9" />

Después de esperar el tiempo necesario, ya podemos empezar con el escaneo. 

<img width="573" height="411" alt="image" src="https://github.com/user-attachments/assets/8377a122-c301-4c4f-9f39-8bcd01a11668" />

---

### Escaneo con Nessus

Para poder hacer el escaneo, vamos a **Scans>My Scans>Create a new scan**. 

<img width="665" height="99" alt="image" src="https://github.com/user-attachments/assets/111cc5b7-bec9-4aa2-9d50-552cd4d257aa" />

Seleccionaremos el hacer un escaneo básico de la red para encontrar vulnerabilidades en esta.

<img width="261" height="549" alt="image" src="https://github.com/user-attachments/assets/f2d9979e-7827-44a9-9f2c-7adf02273428" />

Dentro de la herramienta del escaneo, le podemos poner un nombre, descripción, carpeta donde se guardará el escaneo y el objetivo a escanear. 

Aquí podríamos haber hecho un **PING** a la página del colegio para poder saber su IP y ponerla en el apartado **Targets**, pero poniendo la dirección de la página, también sirve. 

<img width="644" height="333" alt="image" src="https://github.com/user-attachments/assets/f112cabd-11b4-4c77-a910-a92b2e882503" />

Y empieza a escanear en búsqueda de vulnerabilidades 

<img width="621" height="73" alt="image" src="https://github.com/user-attachments/assets/8dd9ec3f-b564-4a07-be49-52cda8b1ab05" />

Durante el escaneo, nos puede salir una notificación del antivirus del host.

<img width="308" height="226" alt="image" src="https://github.com/user-attachments/assets/4626e478-4ca7-4575-8a49-99171ac1eedc" />

Después de dejarlo durante 30 minutos aproximadamente, finaliza el escaneo. 
Y vemos que ha encontrado bastantes incidencias. 
Para poder verlas, hacemos clic sobre **Vulnerabilities**

<img width="654" height="154" alt="image" src="https://github.com/user-attachments/assets/ac2dde18-fad5-40e7-a084-9a5f90bd1c36" />

Y vamos a revisar la vulnerabilidad crítica que ha salido. 

<img width="668" height="298" alt="image" src="https://github.com/user-attachments/assets/33350ea2-2bdd-4be4-97ef-8cef9571e476" />

Esta vulnerabilidad nos dice que la versión de PHP que usa la página web esta obsoleta y que ya no tiene soporte. 
Y al no tener soporte, muchos parches de seguridad/actualizaciones no van a implementarse en la página, por lo que puede tener vulnerabilidades de seguridad. 
Y la solución que nos plantea es actualizar la versión de PHP a la que tenga soporte. 

Otros datos que se pueden ver son:

- Su ID 
- Familia  
- Información de riesgo 
- Factor de riesgo 
- Información de referencia 
- Resumen de la vulnerabilidad y solución 

---

## Parte B

### En la página de descarga, a la derecha del botón “download” se puede ver el Checksum 

Vamos a la página de [Nessus](https://www.tenable.com/downloads/nessus?loginAttempted=true) e instalamos el software. 
En nuestro caso, tenemos que descargarnos la versión de Debian, debido a que estamos en Kali Linux, la cual es una distribución derivada de Debian.  

<img width="664" height="235" alt="image" src="https://github.com/user-attachments/assets/5c861122-b683-418e-ac7c-6cdae65b8e92" />

---

### Indica con tus propias palabras qué es el checksum de un archivo

Podemos ver al lado del botón **Download** que nos aparece el Cheksum. 
El Cheksum es un conjunto de caracteres, el cual, se utiliza para verificar la integridad de un archivo, un paquete de datos o un mensaje digital. 
Si damos clic sobre el Cheksum, nos saldrá lo siguiente:

<img width="660" height="75" alt="image" src="https://github.com/user-attachments/assets/e8e1482f-fd20-490b-8d74-60c01393ed27" />

---

### Indica cuál es más seguro: MD5 o SHA256 y por qué en un par de líneas 

SHA-256 es más seguro que MD5, debido a que MD5 produce una salida de 128 bits, mientras que SHA-256 produce una salida de 256 bits, lo que lo hace mucho más lento.  

Además de que MD5 se ha usado por mucho tiempo y ya hay muchas vulnerabilidades descubiertas

---

### Comprueba la integridad de tu archivo

Para poder comprobar la integridad, vamos a abrir un terminal y dentro de este, vamos a poner el siguiente comando:

```bash
sha256sum Nessus-10.6.1-debian10_amd64.deb 
```

Este comando lo que hace, es sacar el hash SHA256 del archivo que le pasas como parámetro. 

<img width="663" height="76" alt="image" src="https://github.com/user-attachments/assets/8fded104-38a3-449a-a538-c44e5f1e19ae" />

Si ahora, este número lo comparamos con el que salía en la web, veremos que es el mismo, lo que significa, que nuestro archivo descargado y el de la página, es el mismo y no ha sido modificado. 

<img width="664" height="265" alt="image" src="https://github.com/user-attachments/assets/4822167e-19b9-447e-9b75-07fd0f763cca" />































