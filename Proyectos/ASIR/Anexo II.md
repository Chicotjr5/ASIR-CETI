## Configuración de parámetros de red 

Como he adelantado en el proyecto, todas las máquinas están dentro de una red **192.168.33.0/24** y para configurarlas, he usado tanto las herramientas gráficas como los ficheros correspondientes: 

### Kubuntu

Para configurar la IP en Kubuntu, he ido al **icono de red que aparece sobre la barra de tareas>visualizar la conexión correspondiente>configurar (esto saca una nueva ventana)>IPv4> y poner todos los parámetros correspondientes**.

<img width="89" height="98" alt="image" src="https://github.com/user-attachments/assets/939540be-5a21-4ae7-9ff2-c30e761745b0" />

↓

<img width="490" height="63" alt="image" src="https://github.com/user-attachments/assets/e10bd3b6-382b-4ac7-b17a-c1e00fe3a2cc" />

↓

<img width="403" height="284" alt="image" src="https://github.com/user-attachments/assets/5b60f9f2-fd86-42ba-bc81-bd32a1231761" />

↓

<img width="530" height="279" alt="image" src="https://github.com/user-attachments/assets/93db0576-adf1-4531-8658-021dd98b6448" />

---

### Ubuntu Server 22.04-XAMPP

Cambiar la IP en Ubuntu Server 22.04 es mucho más sencillo y no tiene tanta historia. 
Voy al directorio **/etc/netplan** en el cual se encuentra el archivo de configuración de red del equipo y editarlo. 

<img width="652" height="53" alt="image" src="https://github.com/user-attachments/assets/e81d0674-8823-4a3e-a293-4b2c3628927e" />

↓

<img width="610" height="288" alt="image" src="https://github.com/user-attachments/assets/8478eb98-c839-4bc9-96dc-2d17addfb4c4" />

Pongo la configuración de la red de la misma forma que está en el gráfico anterior 
Para hacer que estos cambios se apliquen, usaré el comando 

```bash
sudo netplan apply
```
si no, los cambios no se guardan, por lo que la red no se configurará 

En caso de tener algo mal en nuestra configuración, al ejecutar el comando sudo netplan apply, vería dónde está el error, pero si no sale nada (como es el caso) pues significa que está todo correcto.

<img width="664" height="56" alt="image" src="https://github.com/user-attachments/assets/3d5e0849-14c9-4cf1-9fd7-28e9dec737a6" />

---

### Ubuntu Server 22.04-DNS

Para configurar la red del DNS, hay que seguir los mismos pasos que en **XAMPP**, pues el sistema operativo es similar 
De nuevo, voy al directorio **/etc/netplan** y editamos el archivo de configuración, con cuidado de no poner mal algún carácter 

<img width="658" height="42" alt="image" src="https://github.com/user-attachments/assets/6355a150-72eb-481c-ac1f-52bb0b897273" />

Dentro del archivo, pongo la configuración correspondiente.

<img width="610" height="276" alt="image" src="https://github.com/user-attachments/assets/1d4a3a16-5c14-4ee1-90b6-206cc53d00f9" />

Salgo del archivo y guardo los cambios:

```bash
netplan apply.
```

<img width="396" height="47" alt="image" src="https://github.com/user-attachments/assets/36a4b810-7b14-40ba-b080-2f5f039e10e9" />

---
### T-POT

Para configurar la red del HoneyPot también he de editar un fichero, como en los Ubuntu Server 
Este fichero se encuentra en el directorio **/etc/network**, así que navego hasta ese directorio y procedo a editarlo con el editor de textos **nano**. 


<img width="646" height="41" alt="image" src="https://github.com/user-attachments/assets/61d0ae10-75af-4936-96d6-ca0f58fcd5df" />

Una vez ya editándolo, veremos que podemos configurar 2 adaptadores, uno para una conexión por cable **(eth0)** y otro para conexión inalámbrica **(wlan0)**

<img width="675" height="337" alt="image" src="https://github.com/user-attachments/assets/048b3da9-fd7f-408c-8dcd-646559d61824" />

Para poder aplicar estos cambios, ejecuto el comando 

```bash
sudo systemctl restart networking. 
````
Este comando lo que hace, es reiniciar el servicio de red de Linux (networking) 
Tambien se podría usar el comando 

```bash
sudo service networking restart. 
```

La diferencia entre ambos es que systemctl se usa en sistemas operativos que usan systemd como sistema de inicio, mientras que el otro es más universal y se puede usar en los que tienen systemd y no. 

<img width="475" height="35" alt="image" src="https://github.com/user-attachments/assets/35f1359e-40e1-4beb-b5e2-2b91825f3264" />

---

### Kali Linux 

En Kali Linux he vuelto a usar la interfaz gráfica, siguiendo un proceso muy similar al de Kubuntu. 
He ido al buscador de aplicaciones de Kali Linux, el cual se encuentra en la parte superior izquierda de la pantalla y he buscado “Advanced Network Configuration” esto ha abierto una ventana, en la cual salen las conexiones disponibles. 
Hago doble click sobre la conexión correspondiente, voy a IPv4 Settings y me dispongo a configurar los parámetros de red:


**IP – Máscara – Puerta de Enlace - DNS**

<img width="83" height="81" alt="image" src="https://github.com/user-attachments/assets/6a897707-a531-490e-9069-ad45dc30384a" />

↓

<img width="328" height="105" alt="image" src="https://github.com/user-attachments/assets/e75c889f-e2e1-4a54-ba5d-199d1751ce89" />

↓

<img width="649" height="118" alt="image" src="https://github.com/user-attachments/assets/77c02ca6-da0f-4ca1-919f-c61e66d41f93" />

↓

<img width="634" height="378" alt="image" src="https://github.com/user-attachments/assets/31cd5099-3d1b-4116-9da4-704c8f6f6e4a" />

---

## Comprobación de conectividad entre equipos 

Una vez que he configurado los parámetros de red de cada equipo, solo toca comprobar que todos los equipos se ven entre sí. 
Para comprobarlo, voy a realizar un PING a las diferentes máquinas que conforman la estructura de la red.

<img width="678" height="428" alt="image" src="https://github.com/user-attachments/assets/e9c4ba5d-901d-4171-9d75-51b476595619" />

↓

<img width="684" height="387" alt="image" src="https://github.com/user-attachments/assets/56a12974-7eff-4130-b7fd-addeb5fd0409" />

↓

<img width="711" height="422" alt="image" src="https://github.com/user-attachments/assets/343af555-a82a-4ebb-813e-025fc63684a0" />

↓

<img width="708" height="436" alt="image" src="https://github.com/user-attachments/assets/4932c744-b8ba-435b-97cf-6eacbc243814" />

---

## Configuración del DNS 

De que nos sirve tener un servidor DNS y que todos los equipos estén configurados con este servidor DNS, si no lo configuro 
Voy al servidor DNS e instalo **bind9**. 
Bind9 (Berkeley Internet Name Domain) es un software el cual realiza la tarea de servidor DNS. 
Para instalarlo 

```bash
apt install -y bind9.
```

<img width="457" height="29" alt="image" src="https://github.com/user-attachments/assets/dfb4554a-3c30-45a7-93a0-c04349d5b050" />

Después de instalarlo, compruebo que esté funcionando correctamente (el proceso del servidor mas no el servidor, puesto que aún no está configurado) usando el comando 

```bash
systemctl status named 
```

<img width="638" height="314" alt="image" src="https://github.com/user-attachments/assets/528467bc-6b3f-4e1f-b0cf-5f4f2bcfc23a" />

¿Y porque named y no bind9? 
Bueno, es que named es el proceso del servidor bind9.

Al instalar bind9 se ha creado el directorio **/etc/bind** que es donde se encuentran todos los archivos de configuración del servidor DNS. 


<img width="600" height="254" alt="image" src="https://github.com/user-attachments/assets/90e94503-7311-4414-a476-501a74ae8995" />

Para empezar a configurar el servidor DNS, habrá que crear 1 zona directa. 
Esta zona se llamará **proyecto.com** y su archivo de configuración será **/etc/bind/db.proyecto.com** 
Además, adicionalmente crearé una zona inversa. 
Para poder crear las zonas modificaré el archivo **/etc/bind/named.conf.local**


<img width="630" height="340" alt="image" src="https://github.com/user-attachments/assets/ac387c4d-ba4e-48e0-a6cc-e92f2b0d165e" />

¿Para qué sirve eso de las zonas directas, zonas inversas? 

**Zona directa**

Las zonas directas en un servidor DNS se usan para la resolución de nombres de dominio a direcciones IP.  

Cuando se realiza una consulta DNS, como buscar la dirección IP asociada a un nombre de dominio (por ejemplo, www.yahoo.com), el servidor DNS busca en su zona directa para encontrar la correspondencia adecuada. 

Si el servidor tiene ese registro, la respuesta es autoritativa, si no la tiene y tiene que pedírsela a otro servidor DNS, es una respuesta no autoritativa. 

Una petición directa, sería, por ejemplo: **nslookup adminixampp **
El servidor DNS, me respondería con la IP de ese equipo.


**Zona inversa** 

Las zonas inversas en un servidor DNS se utilizan para la resolución inversa de DNS, es decir, para mapear direcciones IP a nombres de dominio. 
Una petición inversa, sería, por ejemplo: **nslookup 192.168.33.152** 
El servidor DNS me respondería con el nombre de ese equipo. 
Bien, una vez explicadas las zonas directas e inversas, procedo a configurarlas.

Lo primero que configuro será la zona directa. 
En vez de generar de 0 el archivo, o usar uno que ya existe, me ahorro problemas y copio el contenido del archivo **db.local** a otro, que se llamará **db.proyecto.com**  


<img width="601" height="47" alt="image" src="https://github.com/user-attachments/assets/9d954a99-d328-497a-8d19-0d1b3b1fda07" />

Dentro de este archivo, pongo los registros **A** (los cuales permiten que, a través de un nombre de dominio, se obtenga su dirección IP) de cada uno de los equipos que conforman mi red. 


<img width="605" height="367" alt="image" src="https://github.com/user-attachments/assets/b49b45ba-2b62-4edd-ab1d-0ec2528b37a9" />

Para ver si al menos sintácticamente esta todo correcto, uso el comando 

```bash
named-chekzone proyecto.com db.proyecto.com
```
Veo que todo está OK 


<img width="640" height="66" alt="image" src="https://github.com/user-attachments/assets/8b771e94-9434-44c8-a574-586777ae74fd" />

Ahora, toca hacer lo mismo, pero con la zona inversa. 
Haré una copia del archivo **db.255** y la editaremos. 


<img width="553" height="49" alt="image" src="https://github.com/user-attachments/assets/65e0fc65-6146-4250-8a01-eb3e9b02efc2" />

Y dentro del archivo crearé los registros **PTR** (los cuales son inversos al registro A, puesto que asignan una IP a un nombre de dominio) para cada uno de los equipos de nuestra red.


<img width="617" height="365" alt="image" src="https://github.com/user-attachments/assets/ddc7cc09-bab8-4dd0-90d9-9546534bb7b0" />

Y al igual que con la zona directa, haré un 

```bash
**named-checkzone 33.168.192 192.168.33**
````

para ver si al menos sintácticamente es correcto el archivo.



<img width="651" height="54" alt="image" src="https://github.com/user-attachments/assets/eb743cc7-3c7e-4865-8b72-8ac2bd97abba" />

Ya puedo hacer las comprobaciones reales. 
Para ello, uso el comando **nslookup** el cual se utiliza para realizar consultas al Sistema de Nombres de Dominio (DNS) obteniendo información sobre la resolución de nombres de dominio. 
Primero, los registros de la zona directa:


<img width="591" height="516" alt="image" src="https://github.com/user-attachments/assets/09492064-b599-4bb4-84de-5b5f7e48e960" />

Y compruebo que todo funciona perfectamente, a través del nombre de un equipo, recibimos su dirección IP


Ahora, toca comprobar la resolución inversa. 
En vez de hacer un **nslookup** al nombre del equipo/registro, lo haré a la IP.


<img width="651" height="169" alt="image" src="https://github.com/user-attachments/assets/f8be7b0f-168f-47e1-b49d-3597d93d6c37" />

Todas están son **respuestas autoritativas**, que, como expliqué anteriormente, son aquellas en las que el servidor DNS tiene en su zona, el registro que le estamos pidiendo. 

En cambio, en las **no autoritativas** es el servidor DNS quien tiene que consultar en otros servidores DNS ese registro. 
Un ejemplo de respuesta no autoritativa es si la hacemos a www.yahoo.com.

<img width="605" height="347" alt="image" src="https://github.com/user-attachments/assets/23a52695-8130-4aa9-adab-bbd64203ca51" />

























