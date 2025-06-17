<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Preparar máquina](#preparar-máquina)
 - [Configurar Kali Linux](#configurar-kali-linux)
 - [Acceso a la interfaz gráfica](#acceso-a-la-interfaz-gráfica)
 - [Implementación de mecanismos de seguridad para:](#implementación-de-mecanismos-de-seguridad-para:)
   - [Bloquear IPs maliciosas mediante listas negras públicas](#bloquear-ips-maliciosas-mediante-listas-negras-públicas)
   - [Restringir el acceso a sitios web específicos](#restringir-el-acceso-a-sitios-web-específicos)

</details>

---

## Introducción

En esta práctica se va a instalar **OPNSense** el cual es un sistema operativo basado en **FreeBSD** y diseñado para hacer de firewall y router.

**Características**

- Filtrado de tráfico
- IDS/IPS
- VPN
- Control de ancho de banda
- Proxy
- Monitorización

![image](https://github.com/user-attachments/assets/b3944286-b6fd-4f51-baa2-bf74609f0ef6)

---

### Preparar máquina

Antes de instalar OPNsense hay que configurar una máquina virtual con las siguientes características:

![1 1](https://github.com/user-attachments/assets/ecea341e-c572-4658-bbc0-1649ac7d8fcb)

↓

![1 2](https://github.com/user-attachments/assets/cf6a8619-de1e-4b0d-9e64-22852028dc74)

↓

![1 3](https://github.com/user-attachments/assets/59fb3236-68a9-4c0d-acce-a4f604194925)

↓

![image](https://github.com/user-attachments/assets/62680973-1453-47b1-a9fb-10d50e7ff693)

**NOTA** 
 En “Modo promiscuo” hay que establecerlo en “Permitir todo” 

---

### Configuración 

No se va a instalar OPNSense como tal si no que se van a configurar una serie de parámetros. 
La pantalla de inicio del equipo es la siguiente:

![2 1](https://github.com/user-attachments/assets/f81e4857-bdaa-4fb5-afd1-5cb8b9640498)

Después de esperar un buen rato para que arranque nos saldrá la pantalla de inicio de sesión: 

![image](https://github.com/user-attachments/assets/7a6e4aaa-477f-42c2-ad3a-b0316044f599)

En esta misma pantalla se puede observar las IP de las interfaces de red y las claves/hashes de **SSH y HTTPS**. 

![image](https://github.com/user-attachments/assets/75218dde-bf63-467e-93ce-84dbc7c068e4)

OPNSense tiene 2 usuarios, **root** para acceder a las opciones principales e **installer** que sirve para realizar la instalación del sistema operativo. 
Usaré ahora este último para cambiar la distribución del teclado para ponerla en Español. 

Después de configurarlo, nos sale la siguiente pantalla donde podemos elegir el tipo de instalación, cargar una configuración, cambiar la contraseña o reiniciar el sistema. 
Como no hay nada más que hacer, salgo de esta pantalla.

![image](https://github.com/user-attachments/assets/f48f37b8-4b36-4d84-9a05-9441f984f3fb)

Ahora accedo al sistema como **root** y me sale la siguiente pantalla: 

![2 3](https://github.com/user-attachments/assets/2493e206-3add-4c8b-8333-7ded4744840b)

Lo primero que haré será cambiar las direcciones IP de las interfaces para que coincidan con mi esquema. 
La configuración de estas es exactamente igual que en **pfsense**  
Elijo la opción **2 puesto** que es la de cambiar las **IP** y la primera que cambio es la IP de la **LAN**. 

![2 4](https://github.com/user-attachments/assets/cf47254d-64f0-4d43-a2a3-f79a1e57c2f7)

Ahora para acceder a la interfaz web tendré que poner la siguiente dirección:

![2 5](https://github.com/user-attachments/assets/9ed2183e-cc9a-4823-a55a-e74eb1dfd6d8)

La configuración de la otra interfaz es exactamente igual,  pero con la IP **192.168.1.101/24**

![2 6](https://github.com/user-attachments/assets/77618b3b-34e3-432f-822f-4b1bb108fa63)

---

### Configurar Kali Linux

Para que Kali Linux este dentro de la red de **OPNSense** hay que poner su interfaz en **modo NAT** y automáticamente OPNSense le otorgará una IP a Kali Linux. 

![4 5 1](https://github.com/user-attachments/assets/3e0b0769-99b2-43b4-bede-87f0e79efbba)

Con un **nmap 10.0.2.12 -p- -Pn** se pueden observar los puertos abiertos de OPNSense. 

```bash
nmap 10.0.2.12 -p- -Pn
```

![4 5](https://github.com/user-attachments/assets/58409116-d192-4224-ba6c-460a69bb3136)

---

### Acceso a la interfaz gráfica

Abro un navegador en Kali Linux y pongo la URL https://10.0.2.12

Las credenciales son: **rot:opnsense**

![4 1](https://github.com/user-attachments/assets/94cdfbd5-1f9c-4dea-84dd-4c0be5a4a598)

Al acceder por primera vez, nos saltará la configuración inicial, que es básicamente poner el hostname, el dominio, el idioma y alguna cosa más. 
Yo solo configuro el idioma para ponerlo en Español, el resto lo dejo por defecto: 

![4 3](https://github.com/user-attachments/assets/cccf0fc6-3e23-4bd2-8c67-75ffc43787d5)

Al acabar, nos sale le panel de control, donde vemos información del sistema, el uso de memoria, disco y CPU, las interfaces etc.

![4 4](https://github.com/user-attachments/assets/6a51b8d3-415f-4e5b-916b-059f1c4dcede)

---

### Implementación de mecanismos de seguridad para: 

#### Bloquear IPs maliciosas mediante listas negras públicas. 

Para poder bloquear IPs maliciosas, vamos a **Firewall>Aliases** y creamos un nuevo alias: 

![5 1](https://github.com/user-attachments/assets/e70cdf4b-87d8-4cea-a20e-6b0f8a72c29b)

Este nuevo alias se llamará **IP_Maliciosas** y su contenido serán 2 url que contienen IPs maliciosas: 

![5 2](https://github.com/user-attachments/assets/4e2e0024-5bfe-47ef-be6d-85a3bfbf52c4)

Ahora voy a **Firewall>Rules>LAN** y creo una regla nueva: 

![5 3](https://github.com/user-attachments/assets/c60bc940-eb72-44ea-b268-5e40b6824953)

Esta regla bloqueará todo el tráfico de la LAN hacia esas IP:

![5 4](https://github.com/user-attachments/assets/9d6fd9ee-7a95-42c1-a9ca-0f5881e676cb)

Haré lo mismo en la **WAN**. 

![5 5](https://github.com/user-attachments/assets/20e50495-8c4e-48be-bc0e-832e062c4ba2)


#### Restringir el acceso a sitios web específicos 

Para cambiar esto hay que ir a **Services>Unbound DNS>Overrides.**

![6 1](https://github.com/user-attachments/assets/bb8d5fb7-b3bd-4457-89eb-4f75f3caea30)

En esta parte se puede Sobreescribir la resolución DNS para un host/dominio y en vez usar la IP que devuelve el servidor DNS público, se fuerza a usar la IP que yo proporcione. 
Creo una nueva regla y especifico que el dominio pornhub.com se redirija a la IP 0.0.0.0

![6 2](https://github.com/user-attachments/assets/567d63e8-b4dc-4f4c-a605-6de87e5612e4)

Desde Kali Linux intento la conexión y desde el navegador y veo que no puedo acceder. 

![6 4](https://github.com/user-attachments/assets/541c59f9-da76-49c4-a28b-7cc5fe42c72f)

Y tampoco usando **nslookup**:

![image](https://github.com/user-attachments/assets/af763e6f-03c2-416f-93e9-c63b8c5b3358)

En el navegador web, si acedes a un sitio antes de bloquearlo, después de bloquearlo podrás volver a acceder, debido a que se habrá guardado en la caché del navegador. 
Esto me paso con **facebook**




