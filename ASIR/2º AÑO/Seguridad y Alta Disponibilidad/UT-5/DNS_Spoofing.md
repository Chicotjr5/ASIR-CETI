## Ataque DNS Spoofing

### Introducción

En esta práctica, vamos a hacer un ataque **DNS Spoofing**. 

Un ataque DNS spoofing consiste en hacerse pasar por el router de una red, para poder redirigir el tráfico y hacer que los paquetes que envía un equipo al router, los envie a otra máquina malintencionada. 

Haremos el ataque en una máquina Ubuntu 22.04 (Con Kali Linux no funcionaba no se bien porque)

### Iniciar arp spoofing 

La herramienta que usaremos será bettercap la cual deberemos de instalar con un
```bash
apt install bettercap. 
```
Una vez instalado, para poder usarlo, pondremos el siguiente comando en el terminal:

```bash
sudo bettercap 
```

<img width="590" height="24" alt="image" src="https://github.com/user-attachments/assets/bb603300-2caf-4e28-8e44-8d8d14c46795" />

Cabe recalcar, que esta herramienta, además de permitirnos hacer un ataque **dns spoofing**, tambien podríamos hacer un **arp spoofing** y ver que datos se transmiten por la red, pero para ello, ya hay otras herramientas como **Wireshark**.

<img width="640" height="78" alt="image" src="https://github.com/user-attachments/assets/aa65d536-2ff3-4762-9e22-7f4dfabb7669" />

Para iniciar el ataque, haremos que el target del ataque sea mi propio equipo W10 (desde el cual estoy documentando esta práctica vaya).

<img width="592" height="27" alt="image" src="https://github.com/user-attachments/assets/bac53dda-9f46-49a1-9a25-bf0d28150a4e" />

Una vez seleccionado el objetivo del ataque iniciamos el **arp.spoofing** mediante el comando **arp.spoof on**. 

Este comando, inunda la red con paquetes arp falsificados, indicando que la dirección MAC del atacante está asociada a la dirección IP de la víctima y a la dirección IP del gateway de la red.

<img width="625" height="116" alt="image" src="https://github.com/user-attachments/assets/2ecbe183-7fe0-4661-ae04-6d0c9ce38408" />

---

### Iniciar arp spoofing

Una vez iniciado el **arp spoofing**, si ejecutamos el comando **arp -a** en nuestro equipo Windows, veremos que las MAC del router y de la máquina virtual, son las mismas.

<img width="664" height="331" alt="image" src="https://github.com/user-attachments/assets/7576abac-2eb6-4387-a1db-9c2a05d0513f" />

---

### Dns Spoofing

Ya podemos iniciar nuestro ataque. 
Usaremos el siguiente comando

```bash
dns.spoof.domains marca.com
```

Este comando lo que hace, es que cuando mi equipo Windows solicite al DNS la página de **marca.com**, será el atacante quien le responderá. 

<img width="624" height="25" alt="image" src="https://github.com/user-attachments/assets/ee0fc228-e8a9-4d73-b90b-3d8cd40ea365" />

Y con que le responderá? 
Con un servidor apache que vamos a crear. 

Instalamos **apache2** con un sencillo: 

```bash
apt install apache2. 
```

Y creamos la siguiente página web

<img width="470" height="79" alt="image" src="https://github.com/user-attachments/assets/e5e5f43d-584f-4d4f-becf-73c4da53ca37" />

Con el comando:

```bash
dns.spoof.addresses 192.168.1.137
```
hacemos que la petición de www.marca.com sea respondida por la IP del equipo atacante. 

<img width="592" height="28" alt="image" src="https://github.com/user-attachments/assets/a35790b0-feb8-443a-b273-d624bfe39676" />

Una vez todo listo, iniciamos el ataque con un 

```bash
dns.spoof on
```

<img width="634" height="33" alt="image" src="https://github.com/user-attachments/assets/d0e4482f-a782-44e6-9377-a3e8495da30e" />

En mi caso, en Chrome y en Edge no funcionaba, debido a que tenia una extensión de MacAfee, un antivirus, el cual me protegio de este ataque, pero en el cmd, si hacia un ping a www.marca.com, salía la IP **192.168.1.137**.

<img width="584" height="241" alt="image" src="https://github.com/user-attachments/assets/0c257b17-1d88-433a-838a-392feb437c64" />


Insatisfecho por ese resultado, volví a hacerlo, pero esta vez, puse Ubuntu.com como objetivo. 
Y cambiando de navegador a Opera GX ya funcionaba. 

<img width="618" height="238" alt="image" src="https://github.com/user-attachments/assets/bac9ba12-be8f-4d6e-ac28-96b3e53a6dae" />












































