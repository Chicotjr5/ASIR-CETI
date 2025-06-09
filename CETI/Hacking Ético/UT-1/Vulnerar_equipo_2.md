## Índice

- [Introducción](#introducción)
- [Reconocimiento](#reconocimiento)
- [Escaneo](#escaneo)
- [Atacar servicios](#atacar-servicios)

---

## Introducción

En esta práctica se va a seguir con los ataques a equipos, pero esta vez con diferentes herramientas y a otro equipo.


---

### Reconocimiento

Estoy en la red 10.0.2.0/24, así que voy a ver que otros equipos se encuentran en mí misma red. 

Para ello, ejecuto el comando **netdiscover -r 10.0.2.0/24** que muestra todos los equipos conectados a la red.

`netdiscover -r 10.0.2.0/24`

![2 3](https://github.com/user-attachments/assets/e801ee33-dd44-4e16-87c7-8feafde52cae)


Hay 4 equipos, de los cuales sabemos que los 3 primeros (.1,.2,.3) son servidores de VirtualBox, por lo que el único equipo a parte de nosotros que se encuentra en la red es el equipo **10.0.2.5**.

Y antes de hacer el ping, he puesto en marcha **wireshark** el cual es un programa que realiza un escaneo constante de la red. 
Al hacer el ping, **wireshark** ha registrado los siguientes paquetes:

![2 4](https://github.com/user-attachments/assets/353ac4e6-0544-4ba9-92cf-fb5ed0a411df)


Si estamos realizando un escaneo de la red y usamos **netdiscover** y hay alguien con un **wireshark activado**, es altamente probable que **nos pillen por la cantidad de tráfico que genera.**

Otra forma de hacer un escaneo de la red es con la herramienta **nmap**, la cual busca que equipos hay en la red y que puertos están abiertos.

`nmap 10.0.2.0/24`

![2 5 1](https://github.com/user-attachments/assets/0f70f108-f84a-4217-b8b9-c6429e13dc17)


Muestra mucha más información que el netdiscover pero también genera el mismo o más tráfico, además de que como da más información, tarda más tiempo en sacar los resultados.

---

### Escaneo

Analizando el anterior escaneo de **nmap**, se puede observar que el equipo 10.0.2.5 tiene 4 puertos abiertos:

**Puerto 21**
- FTP
**Puerto 22**
- SSH
**Puerto 80**
- HTTP
**Puerto 8080**
- HTTP-Proxy


Ya sabiendo que puertos se pueden vulnerar, realizaré otro escaneo, pero en este diré que solo escaneé esos puertos del equipo y que además me muestre sus versiones. 
Sabiendo las versiones de los servicios, se pueden buscar posibles vulnerabilidades de estos. 

Para lanzar el escaneo, ejecuto el siguiente comando:

`nmap 10.0.2.5 -Pn -n -p21,22,80,8080 -sV`

**-sV**
- Muestra las versiones de los servicios que se encuentran presentes en la máquina.

![4 8](https://github.com/user-attachments/assets/29c665f8-860e-406c-9af0-1e9ee4ca8698)


Para ver posibles vulnerabilidades, se ejecuta el comando 
`searchsploit <protocolo>`

![5 2](https://github.com/user-attachments/assets/dae6ae39-db50-4f4c-a14f-948959f7b01e)


Para el protocolo **vsftpd** hay una vulnerabilidad mientras que para el resto, no.

---

### Atacar servicios

Iniciare sesión como el usuario **Anonymous en el servidor FTP**, el cual no tiene contraseña.

`ftp <ip_servidor>`

![6 1](https://github.com/user-attachments/assets/40c5bac8-c014-4774-8d06-d041e43d5cd8)


Una vez dentro, veo que estoy en un directorio, que contiene otro directorio y un archivo llamado lista.txt, así que me lo descargo.

![6 2 1](https://github.com/user-attachments/assets/e6abe019-2ed7-41e2-8a80-ffea8b6a4eaa)


Una vez descargado, veo su contenido y me doy cuenta de que es un archivo que contiene información del directorio /home del servidor, viendo que hay 8 usuarios diferentes.

![6 2 2](https://github.com/user-attachments/assets/a2ed4394-9068-4e5f-9227-457c8e250a46)


También había un directorio, accedo a él y veo que hay otro archivo, así que también me lo descargo.

![6 2](https://github.com/user-attachments/assets/968d2bdd-deb9-4f18-a13e-ab4054cd719a)


Ya descargado, visualizo su contenido, el cual parece ser un código hash.

![6 3](https://github.com/user-attachments/assets/761d04f0-ef02-497e-a730-ca44289f3151)


Si lo descodifico:

![6 4 1](https://github.com/user-attachments/assets/99d13b96-946f-47a7-9fc7-5cb8dc8faaa9)




Ya conociendo los usuarios que tiene ese objetivo, se puede intentar averiguar la contraseña de cada uno.
Como vi antes, el equipo tenía varios protocolos abiertos, uno de ellos era el ssh. 
Así que lo que voy a hacer ahora, es un ataque de fuerza bruta para vulnerar las contraseñas del equipo y poder acceder con cualquier usuario. 
Precisaré de la herramienta **xhydra** la cual se usa para realizar este tipo de ataques. Para hacer un ataque de fuerza bruta, se necesitan 2 parámetros importantes:

- Usuarios
- Contraseñas

Estos 2 parámetros los pasaremos a través de 2 archivos.

![7 3 1](https://github.com/user-attachments/assets/2b090dce-be58-457d-8ea3-657d61ca4a49)


Inicio **xhydra** y le digo que voy a **atacar al equipo 10.0.2.5** a través del **protocolo ssh** y el **puerto 22**.

![7 4](https://github.com/user-attachments/assets/850f9ae3-fca5-42c4-b32a-c1bb5f0f97eb)


↓

![7 5](https://github.com/user-attachments/assets/5fac8fd7-74f3-4acf-97c9-af236e631448)


Ejecuto el ataque , tarda unos pocos segundos y adivina unas credenciales: **ftpuser:ftpuser**

![7 6](https://github.com/user-attachments/assets/dbb8f258-8fc5-4d88-8764-9648b794039c)


Inicio de nuevo la conexión a FTP con el usuario **ftpuser** y entro al directorio **/home** viendo lo mismo que en el archivo, todos los directorios de los usuarios

![6 4](https://github.com/user-attachments/assets/455b5979-c38f-4104-a5e0-eb088f5eade6)


Accedo al directorio del usuario **usuario01** y veo que contiene otro directorio **flag**, que contiene un archivo **flag.txt** el cual obtengo:

![8 1](https://github.com/user-attachments/assets/26ac8e11-72fb-4772-9905-aa3a708f216e)


Veo que su contenido es otro hash, el cual descodifico:

![8 2](https://github.com/user-attachments/assets/e0955409-2a26-44dc-894f-48347a4eeb3c)


Si lo descodifico, saldrá lo siguiente:

![8 3](https://github.com/user-attachments/assets/60a9098a-060f-47e8-8813-826548c4f137)


