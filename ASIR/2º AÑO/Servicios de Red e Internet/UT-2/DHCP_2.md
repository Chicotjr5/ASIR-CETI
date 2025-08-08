## Instalación y configuración 

### Visualiza los ficheros de configuración de la red y comprueba su correcto funcionamiento. 

En la anterior práctica, hemos creado un servidor DHCP en un Windows Server 2012, pues ahora toca hacerlo en Ubuntu Server 22.04. 

Antes de iniciar el equipo, tenemos que añadir una nueva tarjeta de red, en modo red interna, para que el servidor DHCP envíe IP a esta red.

<img width="667" height="185" alt="image" src="https://github.com/user-attachments/assets/90a6619e-57fa-4573-b752-e0d798eafe0e" />

Iniciamos el equipo y lo primero que vamos a hacer, va a ser configurar el interfaz que acabamos de añadir. 

Editamos el archivo **/etc/netplan/00-installer-config.yaml**

<img width="883" height="33" alt="image" src="https://github.com/user-attachments/assets/d564997d-0ee7-4a36-8a0b-797d5526674e" />

Ponemos la siguiente configuración. 

<img width="293" height="223" alt="image" src="https://github.com/user-attachments/assets/20533de8-5c4c-462c-877c-36ccbc330d80" />

Y guardamos los cambios. 

```bash
sudo netplan apply
```

<img width="710" height="34" alt="image" src="https://github.com/user-attachments/assets/b4d9dfc7-6bda-4808-a9d2-8f98233b6350" />

### Instalar el servicio DHCP en el servidor.

Para poder usar el servicio DHCP, tenemos que instalar el paquete **isc-dhcp-server.**

```bash
apt install isc-dhcp-server
```

### Crear subred con parte de las direcicones disponibles y con las siugientes características

- Rango dentro de la red 172.16.XX.0 cogiendo al menos 50 direcciones para ceder a partir de la dirección 100
- Crear exclusiones para 4 servidores de impresión (en un rango intermedio y consecutivo)
- Opciones para los clientes: la del gateway (suponer que es 172.16.XX.11).
- Opciones para los clientes: la de los servidores DNS  Opciones para los clientes: sufijo DNS a sri-XX.net 

En verdad, no hay que crear una subred, si no que tenemos que configurar el archivo **/etc/dhcp/dhcpd.conf** con los parámetros anteriormente descritos. 

Hay que tener mucho cuidado con este archivo, porque a la mínima que pongamos algo mal/nos dejemos algún carácter mal puesto, nos dará un error y no podrá iniciarse el servicio. 
Aquí estaría el archivo con la configuración correcta.

<img width="548" height="175" alt="image" src="https://github.com/user-attachments/assets/710e8b3e-afad-4c04-824d-2a9fbe726e52" />

Esta configuración se puso al final del archivo, para no cambiar nada que estuviera previamente en el archivo y no arriesgarse a que algo no funcione.


En esta configuración se especifican 2 rangos de direcciones, dejando 5 direcciones sin dar, las cuales están excluidas para 4 servidores. 
Luego, ponemos que la Gateway sea la 172.16.3.11, la dirección del servidor 
Ponemos la IP de los servidores DNS y el nombre del dominio DNS 


Una vez configurado, reiniciamos el servicio DHCP y vemos su estado.

```bash
service isc-dhcp-server restart
```

<img width="474" height="23" alt="image" src="https://github.com/user-attachments/assets/b89956fb-132f-4433-a60a-60241304409d" />

↓

```bash
service isc-dhcp-server status
```

<img width="665" height="145" alt="image" src="https://github.com/user-attachments/assets/b3dce6fd-de96-4060-b9a7-e9d9eb4f396e" />

Antes de pasar al siguiente paso, tenemos que configurar el servidor, para que solo de direcciones por la tarjeta de red interna. 
Tendremos que configurar el archivo **/etc/default/isc-dhcp-server**. 

<img width="820" height="39" alt="image" src="https://github.com/user-attachments/assets/005ff2f3-b247-4df9-9290-f598f733eccf" />

Dentro de este archivo, en la línea INTERFACESIPV4 tenemos que especificar la interfaz que usará el servidor DHCP. 

<img width="767" height="383" alt="image" src="https://github.com/user-attachments/assets/43a7a0d0-17a8-4bf7-a3f0-a58d8d859696" />

### Modificar la configuración de W7 y de UBUNTUCLI para recibir una IP dinámicamente. Comprobar si funciona

Los equipos W7 y Ubuntu cliente ya tenían la configuración de la práctica previa, por lo que solo tenemos que comprobar que el servidor DHCP esta funcionando correctamente y les ha dado una IP dentro del rango a cada equipo. 
En Windows 7 abrimos una consola y hacemos un 

```bash
ipconfig.
```

<img width="735" height="209" alt="image" src="https://github.com/user-attachments/assets/daecc413-4df2-42de-92a0-06495ec5dd44" />

Y en Ubuntu hacemos un 

```bash
ifconfig
```

<img width="745" height="148" alt="image" src="https://github.com/user-attachments/assets/4ab917f9-40af-40d0-a11a-a73d1583221e" />

### Establecer una reserva para la MAC de XP y asignarle la dirección 172.16.XX.125. Comprobar si la coge.

Para poder hacer reservas en Ubuntu server, tenemos que volver a editar el archivo **/etc/dhcp/dhcpd.conf** y justo debajo de la configuración que hemos hecho, tenemos que poner lo siguiente:

Aqui realizamos la configuración para que al equipo con la MAC 08:00:27:82:55:F2 le asigne la IP 172.116.3.125

<img width="507" height="119" alt="image" src="https://github.com/user-attachments/assets/487e3e74-e0ef-4d00-9250-fc6ab3504524" />

Reiniciamos el servicio

<img width="707" height="246" alt="image" src="https://github.com/user-attachments/assets/13355c4e-060a-4e7c-9dc0-6e60a0f9055e" />

Si renovamos la IP en Windows 7, veremos que el servidor DHCP le ha dado la IP que le hemos reservado.

```bash
ipconfig /renew
```

<img width="623" height="182" alt="image" src="https://github.com/user-attachments/assets/8001a030-5895-401b-ac23-a59911305d99" />

---

## Pruebas 

### Visualizar en el servidor las concesiones realizadas

Las concesiones del servidor DHCP se encuentran en el archivo /var/lib/dhcp/dehcp.leases

<img width="558" height="28" alt="image" src="https://github.com/user-attachments/assets/baee7b94-04ab-4344-94d5-81d4db5c4738" />

Entramos al archivo y vemos 2 concesiones que ha hecho. 
Una para Ubuntu cliente y otra para el W7. 

<img width="716" height="498" alt="image" src="https://github.com/user-attachments/assets/0fdecc0b-1879-4dda-936e-a1c6cb602d94" />

### Verificar que el servicio está funcionando

Para ver que el servicio está funcionando, es tan fácil como hacer un

```bash
systemctl isc-dhcp-server status
```

aunque hay otros comando para comprobarlo, pero van a sacar el mismo resultado. 

<img width="762" height="358" alt="image" src="https://github.com/user-attachments/assets/34c64883-2374-44da-a6c0-f0ff8bfb9e65" />

### Comprobar el LOG 

Para ver el LOG del servidor DHCP, tenemos que usar el comando  

```bash
tail -f /var/log/syslog | grep dhcpd
```

Este comando, lo que hace es monitorear los registros del sistema en tiempo real que están relacionados con el servicio DHCP

<img width="841" height="276" alt="image" src="https://github.com/user-attachments/assets/85cfa0f8-3acf-4a87-addd-5e2fb6ca4d9e" />

Podemos ver varios mensajes, como la concesión de la IP a Ubuntu o la reserva que hemos hecho a W7, además de mensajes DHCP como Request o Pack

### Presentar la configuración final de todos los ficheros texto que afectan al correcto funcionamiento del servidor y de su DHCP (incluyendo todos los que afectan a la tarjeta de red)

**/etc/dhcp/dhcpd**

<img width="608" height="312" alt="image" src="https://github.com/user-attachments/assets/37f27030-19ba-4411-bf62-629916a93f15" />

**/etc/default/isc-dhcp-server**

<img width="716" height="358" alt="image" src="https://github.com/user-attachments/assets/ea89c94a-0712-494d-988b-e22594fa7bc7" />

**/etc/netplan/00-installer-config.yaml.**

<img width="262" height="198" alt="image" src="https://github.com/user-attachments/assets/b89aea41-cc18-4b7b-a6d6-db19dd436e23" />

### En los servidores quita las reservas de clientes que hayas hecho y las concesiones ya dadas. Detén todos los equipos, arranca primero los servidores Windows y Linux, luego arranca los dos equipos clientes y comprueba qué servidor DHCP les ha asignado direcciones. Repítelo solicitando varias veces nuevas direcciones y comprueba qué pasa. 

En resumen, tenemos que activar ambos servidores DHCP desde 0, encender los clientes y ver que Servidor le proporciona una IP primero. 

Quitamos las reservas y las concesiones ya hechas, reiniciamos cada equipo (encendiendo primero los servidores) y vemos que, en este primer round, Windows Server ha dado IP a ambos clientes.

<img width="663" height="143" alt="image" src="https://github.com/user-attachments/assets/9e8595da-c483-446e-9514-dafc8514bbab" />

↓

<img width="624" height="191" alt="image" src="https://github.com/user-attachments/assets/a3d7a959-89cd-4a40-9960-28f116805993" />

Hacemos un segundo round (volvemos a reiniciar las máquinas) y vemos, que otra vez Windows server dio las IP a los equipos.

<img width="653" height="46" alt="image" src="https://github.com/user-attachments/assets/36a0c56b-c95a-4846-92c5-132f9874f7de" />

↓

<img width="640" height="180" alt="image" src="https://github.com/user-attachments/assets/e9a6d836-8243-4351-8281-d641e3bd0ebe" />

Para hacer que el servidor de Ubuntu nos de la IP, tendríamos que estar continuamente liberando y pidiendo IPs hasta ver que nos da la IP. 

Así que tendríamos que estar haciendo **ipconfig /release ipconfig /renew** todo el rato en Windows y **dhclient -r enp0s8 dhclient** en Ubuntu hasta que al servidor Ubuntu le de por darnos sus IP.

<img width="718" height="369" alt="image" src="https://github.com/user-attachments/assets/cf528927-2704-48b7-bf4f-b81e268a548f" />

Que al final, si nos da IP, pero podemos estar así 1 minuto o media hora.

<img width="644" height="181" alt="image" src="https://github.com/user-attachments/assets/97689df9-41d1-4290-b4d8-8402efff6d93" />

### En el cliente Windows XP, utiliza la configuración alternativa y comprueba si funciona cuando se paran los servidores DHCP. 

La configuración alternativa, se usa cuando a un equipo nadie le da una IP, así, en vez de ponerse una APIPA, se pondrá la IP que nosotros le hayamos puesto. 
En mi caso, uso esta configuración (cualquiera vale).

<img width="425" height="282" alt="image" src="https://github.com/user-attachments/assets/0fa80d78-1baf-4d80-a831-2d8604aa253f" />

Apagamos todos los servidores DHCP, liberamos la IP y la volvemos a renovar, dando como resultado, que se ha puesto la configuración que le acabamos de dar. 

<img width="714" height="202" alt="image" src="https://github.com/user-attachments/assets/544cf26f-a42c-4a01-8ced-eef8e5305d4e" />

---

## Problemas 

Uno de los problemas que me encontré al hacer esta práctica, es que al configurar el archivo **/etc/dhcp/dhcpd.conf**, este me daba problemas, seguramente por un problema de sintaxis o algún carácter mal puesto, así que para solucionarlo, lo que hice fue restaurar la máquina con una instantánea que hice justo después de instalar el servicio DHCP y empezar de 0.















































