## Índice

- [Introducción](#introducción)

- [Ejercicio 1](#ejercicio-1)
  - [Configuración de PCs](#configuración-de-pcs)
    - [VLAN 10](#vlan-10)
    - [VLAN 20](#vlan-20)
    - [VLAN 30](#vlan-30)
  - [Crear VLAN](#crear-vlan)
    - [Switch 1](#switch-1)
  - [Configurar VLAN](#configurar-vlan)
  - [Modo Trunk](#modo-trunk)
  - [Comprobación conexión entre equipos de la misma VLAN](#comprobación-conexión-entre-equipos-de-la-misma-vlan)
    - [VLAN 10](#vlan-10-1)
    - [VLAN 20](#vlan-20-1)
    - [VLAN 30](#vlan-30-1)
    - [VLAN 10 -> VLAN 20](#vlan-10--vlan-20)
  - [Configurar router](#configurar-router)
    - [VLAN 10](#vlan-10-2)
    - [VLAN 20](#vlan-20-2)
    - [VLAN 30](#vlan-30-2)
  - [Comprobación VLANs](#comprobación-vlans)
    - [VLAN 10 -> VLAN 20 -> VLAN 30](#vlan-10--vlan-20--vlan-30)
    - [VLAN 20 -> VLAN 10 -> VLAN 30](#vlan-20--vlan-10--vlan-30)
    - [VLAN 30 -> VLAN 10 -> VLAN 20](#vlan-30--vlan-10--vlan-20)

- [Ejercicio 2](#ejercicio-2)
  - [Configuraciones PC](#configuraciones-pc)
    - [PC1](#pc1)
    - [PC2](#pc2)
  - [Configuraciones routers](#configuraciones-routers)
    - [R1](#r1)
    - [R2](#r2)
    - [R0](#r0)
  - [Configuración IPsec](#configuración-ipsec)
  - [Comprobación](#comprobación)

- [Ejercicio 3](#ejercicio-3)
  - [VLAN Hopping](#vlan-hopping)
    - [Soluciones](#soluciones)
  - [ARP Spoofing (ARP Poisoning)](#arp-spoofing-arp-poisoning)
    - [Soluciones](#soluciones-1)
  - [Manipulación de STP - Spanning Tree Protocol](#manipulación-de-stp---spanning-tree-protocol)
  - [Soluciones](#soluciones-2)
  - [MAC Flooding – Inundación de la tabla CAM](#mac-flooding--inundación-de-la-tabla-cam)
    - [Soluciones](#soluciones-3)

## Introducción

En esta práctica se van a realizar 2 ejercicios con Packet tracer, uno en el cual se crearán diferentes VLAN que se deberán de interconectar entre si y otro en el cual se creará un túnel IPSec.

Además de que se hablarán sobre las diferentes amenazas que existen en las VLAN

---

## Ejercicio 1

En este ejercicio se ha de crear una infraestructura de red que cuente con 3 VLANS y dentro de las mismas habrá 3 equipos. 
Cada VLAN tendrá su propio switch, los cuales se conectarán a un switch central, el cual estará también conectado a un router. 
El objetivo es que cada vlan se conecte con cada VLAN.

La topología queda de la siguiente forma:

![[1.1 2.png]]

Las VLAN tendrán las siguientes redes:

- VLAN 10
	- 192.168.10.0/24
- VLAN 20
	- 192.168.20.0/24
- VLAN 30
	- 192.168.30.0/24

---

### Configuración de PCs

#### VLAN 10

![[2.1 configuracion ip pc.png]]

↓

![[2.2 1.png]]

↓

![[2.3 1.png]]

#### VLAN 20

![[2.4 1.png]]

↓

![[2.5.png]]

↓

![[2.6 1.png]]

#### VLAN 30

![[2.7 1.png]]

↓

![[2.8.png]]

↓

![[2.9.png]]

---

### Crear Vlan

Las Vlans se han de crear en cada uno de los switch. Estas se pueden hacer mediante comandos o yendo a **Config>Vlan Database**. 
Aquí se configura el número de la VLAN y su nombre:


#### Switch 1

![[3.1 VLANS.png]]

En la parte inferior se puede observar los comandos que se ejecutan cuando creamos las VLAN. Esta **configuración es la misma para los 4 switches**, así que solo pongo la captura del switch1

---

### Configurar VLAN

El siguiente paso es el de configurar los puertos por los que irá cada VLAN. 
Se hace con los comandos:

`interface fa0/x` 
`switchport Access vlan x`

![[4.1 configurar vlan2.png]]

También es la misma configuración para todos los switches

---
### Modo Trunk

Para que los switches puedan enviarse tráfico VLAN entre sí hay que configurar el modo trunk en la interfaz donde están conectados con el switch central. Se hace con los comandos:

`interface fa0/x `
`switchport mode trunk`


**Switches normales**

![[5.1 poner el modo trunk 1.png]]

**Switch central**

![[5.4 - raiz 1.png]]

---

### Comprobación conexión entre equipos de la misma VLAN

Para ver que estas configuraciones son correctas realizo conexiones entre cada equipo de las vlan

#### VLAN 10

![[7.1 cOMPROBACION DE QUE FUNCIONAN LAS VLANS.png]]

#### VLAN 20

![[7.2 1.png]]


#### VLAN 30

![[7.3 1.png]]

#### VLAN 10 -> VLAN 20

![[7.4 Fallopc1-pc2.png]]

Se puede ver que entre equipos de la misma VLAN, se realiza la conexión, pero que entre equipos de diferentes VLAN, la conexión no se realiza.

---

### Configurar router
Para permitir la comunicación entre las VLANS hay que configurar la interfaz fa0/0 del router.

`interface fa0/0`
`interface fa0/0.x`
`encapsulation dot1Qx`
`ip address 192.168.x.1 255.255.255.0`

Con estos comandos se crea un subinterfaz en la interfaz fa0/0. 
La enumeración 0.x identifica a la VLAN a la que pertenece, caso similar a la encapsulación, puesto que tendrá el mismo número que la vlan a la que está asociada.
Por último se configura su dirección IP la cual hace referencia a la Gateway de los PC

#### VLAN 10

![[8.1.png]]

#### VLAN 20

![[8.2.png]]

#### VLAN 30

![[8.3.png]]

---

### Comprobación VLANs

#### VLAN 10 -> VLAN 20 -> VLAN 30

![[9.1 Comprobacion 1.png]]

#### VLAN 20 -> VLAN 10 -> VLAN 30

![[9.2.png]]

#### VLAN 30 -> VLAN 10 -> VLAN 20

![[9.3.png]]

---

### Ejercicio 2

En este ejercicio tenemos la siguiente topología: Router0 que esta conectado a router 1 y 2 los cuales cada uno, están conectados a una red diferente. Entre el router 1 y 2 se ha de crear un túnel IPsec.

IPSec fue diseñado para proteger el protocolo IP, permitiendo la comunicación segura entre dos redes distantes a través de un túnel cifrado. 
Este túnel virtual actúa como una barrera contra accesos no autorizados, garantizando la integridad y confidencialidad de los datos. 
Permite cifrar y/o autentificar todo el tráfico a nivel IP. Se tunelizan dos rúters con el fin que todo el tráfico entre ambas redes esté asegurado.


Las amenazas que evita son:
- Escucha y captura de paquetes IP.
- Paquetes IP con dirección de origen falsa.

Los protocolos habilitados en Ipsec son:
- **AH** - Destinado a ofrecer la autenticación del origen de los paquetes IP.
- **ESP** - Ofrece confidencialidad y protección de la autenticación de origen de paquetes IP.
- **Gestión de credenciales** - La autenticación y confidencialidad utilizan claves secretas.

La topología es la siguiente:

![[33.1.png]]

---

### Configuraciones PC

#### PC1

![[34.1.png]]

#### PC2

![[34.2.png]]

---

### Configuraciones routers

Para que los routers se comuniquen entre sí, han de tener su propia red configurada para ellos solos. 
La red para los routers 0 y 1 será la 192.168.3.0/24 y para los routers 0 y 2 la 192.168.4.0/24

#### R1

![[35.1.png]]

↓

![[35.2.png]]

#### R2

![[35.3.png]]

↓

![[35.4.png]]

#### R0

![[35.5.png]]

↓

![[35.6.png]]

---

### Configuración IPsec

En cada router se deberá de realizar la siguiente configuración:


`# 1. Crear una lista de acceso para tráfico entre las LANs de PC1 y PC2 access-list 100 permit ip 192.168.x.0 0.0.0.255 192.168.x.0 0.0.0.255 
`# 2. Configurar la política ISAKMP (Fase 1) crypto isakmp policy 10 encr aes 256 # Cifrado AES de 256 bits hash sha # Algoritmo de hash SHA authentication pre-share group 5 # Grupo Diffie-Hellman 5 lifetime 86400 # Tiempo de vida de la fase 1 en segundos 
`# 3. Definir clave compartida crypto isakmp key MI_CLAVE address 192.168.x.x 
`# 4. Configurar IPsec Transform Set (Fase 2) crypto ipsec transform-set TUNEL esp-aes 256 esp-sha-hmac 
`# 5. Crear una política de seguridad IPsec crypto map VPN 10 ipsec-isakmp set peer 192.168.x.x set transform-set TUNEL match address 100

Para ambos routers es la misma configuración, pero con las IP cambiadas:

![[36.3.png]]

---

### Comprobación

Para comprobar su funcionamiento, mando un paquete del PC1 al PC2:

![[36.4.png]]

---

## Ejercicio 3

### VLAN Hopping

El VLAN Hopping se produce cuando un atacante consigue acceder o inyectar tráfico en una VLAN diferente a la que realmente pertenece. Existen principalmente dos métodos:

**Switch Spoofing**
- El atacante configura su tarjeta de red para **negociar** dinámicamente un enlace troncal (trunk) con el switch.
- Si el puerto del switch está en modo dynamic desirable o dynamic auto, puede llegar a establecerse un trunk y, por tanto, el atacante tiene acceso a todas las VLANs permitidas en ese enlace troncal.

**Double Tagging - Doble etiquetado 802.1Q**
- El atacante envía tramas con dos etiquetas VLAN.
- La primera etiqueta (la externa) es eliminada por el primer switch (que piensa que esa es la VLAN nativa), y la segunda etiqueta (la interna) sigue presente para el switch siguiente, que reencamina la trama en otra VLAN.


#### Soluciones
- Deshabilitar DTP (como se vio arriba).
- Asignar VLAN nativa a una VLAN que no transporte tráfico real de usuarios.
- Trunk Allowed Lists para limitar las VLANs.
- No usar VLAN 1 para datos de usuarios (mantener la VLAN 1 solo para administración o incluso no usarla).

---

### ARP Spoofing (ARP Poisoning)
Consiste en enviar respuestas ARP falsas a los hosts de la red, haciendo que asocien la dirección IP de un destino legítimo (por ejemplo, el gateway) con la MAC del atacante.

- Permite realizar ataques de:
	- MitM
	- Capturar credenciales
	- Inyectar tráfico falso
- Afecta tanto a redes sin VLAN como a redes con VLANs, pero dentro de una misma VLAN el impacto puede ser mayor si no hay otras medidas de seguridad (como port security, DHCP snooping, Dynamic ARP Inspection, etc.).

#### Soluciones

- Limitar el número de MAC que pueden conectarse a un puerto de acceso.
- Dynamic ARP Inspection (DAI)
	- Valida los mensajes ARP contra la base de datos de DHCP Snooping o estática

---

### Manipulación de STP - Spanning Tree Protocol

El STP se encarga de evitar bucles de capa 2 por lo que un atacante podría:

- Enviar BPDUs falsos para hacerse pasar por Root Bridge, alterando la topología de la red.
- Esto podría redirigir el tráfico a través de un switch comprometido, facilitando ataques MitM o DoS.

#### Soluciones

- **BPDU Guard** - Deshabilita el puerto si recibe BPDUs, evitando que dispositivos no deseados influyan en el STP.
- **Root Guard** - Evita que un puerto designado reciba BPDUs que indiquen que el switch conectado puede convertirse en Root Bridge.

---

### MAC Flooding – Inundación de la tabla CAM

En un switch, la tabla CAM (Content Addressable Memory) almacena la relación MAC puerto así que si se inunda la tabla CAM con gran número de direcciones MAC falsas.

- La tabla se satura y no puede aprender más direcciones legítimas.
- El switch pasa a comportarse como un hub en esos puertos, enviando tramas por broadcast.
- El atacante puede ver el tráfico de otras VLANs (o al menos, dentro de la misma VLAN, capturar más fácilmente).

#### Soluciones

- Implementar Port Sercurity
- Habilitar Dynamic ARP Inspection – DAI
- Segmentación de las redes
- Usar switches con protección contra ataques de inundación

