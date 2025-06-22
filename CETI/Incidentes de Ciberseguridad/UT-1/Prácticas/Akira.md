<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
  - [Segurizar la máquina](#segurizar-la-máquina)
    - [Configuración de la máquina](#configuración-de-la-máquina)
      - [Red](#red)
      - [Carpetas compartidas](#carpetas-compartidas)
    - [Portapapeles](#portapapeles)
    - [Configuración del sistema operativo](#configuración-del-sistema-operativo)
      - [Actualizar](#actualizar)
      - [Firewall](#firewall)
      - [Comprobar tráfico saliente](#comprobar-tráfico-saliente)
      - [Comprobar tráfico entrante](#comprobar-tráfico-entrante)
        - [VPN](#vpn)
        - [Navegador](#navegador)
    - [Prueba de funcionamiento](#prueba-de-funcionamiento)
- [Investigación sobre el ransomware Akira](#investigación-sobre-el-ransomware-akira)
  - [Dark Web](#dark-web)
  - [Análisis técnico](#análisis-técnico)
  - [Herramientas de descifrado](#herramientas-de-descifrado)
  - [Flujo de ataque](#flujo-de-ataque)
  - [Páginas web](#páginas-web)
- [Prueba de ataque](#prueba-de-ataque)
- [Usar herramientas de descifrado](#usar-herramientas-de-descifrado)
</details>

---

## Introducción

En esta práctica se va a acceder a la DarkWeb para visualizar la página web de **Akira**.

---

### Segurizar la máquina

#### Configuración de la máquina

##### Red

NAT

![1 2 1](https://github.com/user-attachments/assets/42dc13fd-fb92-46a0-a11a-3cb934b47049)

##### Carpetas compartidas

Ninguna

![1 2 2](https://github.com/user-attachments/assets/8f61ab6e-f5b2-47b9-8a14-232401d8c4f2)


### Portapapeles

Desactivado

![1 2 3](https://github.com/user-attachments/assets/82d85a9b-30eb-43ce-9c08-1db0ec75a7d8)

#### Configuración del sistema operativo 

##### Actualizar

```bash
apt update -y && apt upgrade -y
```

![1 2](https://github.com/user-attachments/assets/1bb7bdfb-e950-4b29-b72d-b0cc827bec7d)


##### Firewall

Usaré el Firewall **ufw**

```bash
apt install ufw -y
```

![2 1](https://github.com/user-attachments/assets/a819e397-6fec-4207-8ba1-49da4d244916)

Para la configuración, lo que hare será configurar que por defecto se deniegue todo el tráfico entrante y saliente.


```bash
ufw enable
ufw default deny outgoing
ufw default deny incoming
ufw allow out on tun0
```

![2 2](https://github.com/user-attachments/assets/8ff2f6ef-6494-4078-bb39-604190b73e27)

Y de seguido, permitire todo el tráfico saliente en los puertos 1194, 443, 51820 y 53:

```bash
ufw allow out to any port 1194 proto udp
ufw allow out to any port 443 proto tcp
ufw allow out to any port 51820 proto udp
ufw allow out on tun0 to ay port 53 proto udp
```

![2 3 1](https://github.com/user-attachments/assets/50f604b5-47da-421b-a594-1f8e8e8e512e)

Para ver todas las reglas creadas:

```bash
ufw status verbose
```

![2 3 2](https://github.com/user-attachments/assets/fd8c91d7-fbb7-4be8-b2a1-c71ab7495837)

##### Comprobar tráfico saliente

Con el comando curl -I obtengo los encabezados  de las respuestas https del sitio [as](https://as.com) sin necesidad de descargar información. 
Primero lo pruebo con el firewall activado y luego desactivado. 

![image](https://github.com/user-attachments/assets/9d7c3dd9-0184-405d-ad24-6531dc310f14)

##### Comprobar tráfico entrante: 

Para esto pongo el equipo en modo Red Nat junto con otra máquina con Kubuntu 23.10. 

![2 6](https://github.com/user-attachments/assets/2a8cb3ab-8cd6-4bad-a76b-d50dce5effc7)

En Kali Linux ejecuto el comando nc -lvp 6660 esto hace que el equipo registre cualquier conexión por el puerto 6660. Desde el otro equipo hago un ping a través de ese puerto.

![2 9](https://github.com/user-attachments/assets/ce791543-b0fc-43c1-9efa-e4308855f6dd)

↓

![2 10](https://github.com/user-attachments/assets/e0f03f04-bc01-437d-8ea4-71818cf797a3)

Con el firewall habilitado, no registra nada, pero con este deshabilitado, sí.

![2 11 estaria guay poner un wireshark para la escucha](https://github.com/user-attachments/assets/bc13b95f-199e-45ed-bb17-80bdefc3821f)

##### VPN

La VPN que he usado ha sido ProtonVPN y para instalarla he seguido los siguientes pasos: 
Descargar el repositorio de configuración y las claves:

![image](https://github.com/user-attachments/assets/cd4d2d24-47a6-40ae-850b-b0ee94293ef1)

Instalar el repositorio que contiene la app y actualizar.

![image](https://github.com/user-attachments/assets/8515851b-db1f-47ae-93b1-9608bd51ef85)

Instalar la aplicación: 

```bash
apt install proton-vpn-gnome-desktop
```

![image](https://github.com/user-attachments/assets/a6b04a59-f7cf-4670-8d43-414fa1311877)

Arrancar la VPN y conectarse: 

![image](https://github.com/user-attachments/assets/27a55377-a127-444e-b7b2-f19a5c769814)

Para comprobar su funcionamiento, hago un ip a para ver las interfaces de red existentes:

```bash
ip a
```

![image](https://github.com/user-attachments/assets/12c978d4-1453-4a50-ab82-88d382fbdad5)

##### NAvegador

Como navegador he usado Tor y para instalarlo hay que usar e siguiente comando:

```bash
apt install -y tor torbrowser-launcher
```

![4 1](https://github.com/user-attachments/assets/65388050-8393-4876-9c1d-93c21435e3bd)

##### Prueba de funcionamiento

Para ver si todo el sistema que he creado funciona o no, visito la página del grupo Trinity. Este grupo ha ganado relevancia últimamente debido a que supuestamente realizaron un hackeo a la Agencia Tributaria AEAT robando 560GB de información.

[Dirección](http://txtggyng5euqkyzl2knbejwpm4rlq575jn2egqldu27osbqytrj6ruyd.onion)

![4 4](https://github.com/user-attachments/assets/ae921255-e80d-4061-8b56-933cc9b3d78a)

En el apartado Our Leakes se puede observar los ataques que han realizado e información sobre los mismos.

![4 5](https://github.com/user-attachments/assets/5f635995-2948-43c2-aa4d-3fbed4f6eb71)

---

### Investigación sobre el ransomware Akira

Akira es un grupo de ciberdelincuentes especializados en el Ransomware que iniciaron su actividad en marzo de 2023. 
Se especula sobre sus vínculos con el antiguo grupo de ransomware CONTI, ya que varios afiliados de CONTI migraron a campañas independientes como Royal, BlackBasta y, potencialmente, Akira después de que CONTI cesara sus operaciones. 
Operan bajo un modelo de ransomware como servicio (RaaS), que permite a los afiliados utilizar el ransomware a cambio de una parte de los pagos de rescate.

#### Dark Web

Para poder buscar la página .onion de Akira he usado el **motor de búsqueda Ahmia** el cual es un servicio oculto de tor y que permite buscar información en la DarkWeb. 

Busco la palabra Akira y el 1º resultado que me da es el que buscaba.

![5 2 2](https://github.com/user-attachments/assets/ea6712d5-723c-40d2-bd97-435350db3092)

Al acceder se ve lo siguiente: 

![5 2](https://github.com/user-attachments/assets/2f42073f-4b41-4030-a7fa-60ef6f7c63dc)

Es la página onion de Akira. Parece un terminal donde podemos “ejecutar” los siguientes comandos para ver más información: 

![image](https://github.com/user-attachments/assets/7a161ae6-6e0c-4f3f-ac02-ae5c9ec7209e)

Con el comando **leaks** se ven todos los ataques que han realizado, pudiendo observar el nombre de la entidad afectada, una descripción del ataque, el progreso del ataque y un Link de descarga del cual se obtiene un archivo **.torrent**

![5 3](https://github.com/user-attachments/assets/9e8e7f44-c724-422b-82c5-82519d69c919)

Ahora veo los nodos por los que estoy pasando para acceder a la página de Akira: 

![image](https://github.com/user-attachments/assets/8bd07cc0-6ef1-4dbb-909e-7cb69a0a5b52)

Y en Wireshark se puede observar como mi equipo se comunica con estos nodos (principalmente con el primer nodo, el 57.128.101.155) 

![image](https://github.com/user-attachments/assets/4d4e34c9-4c43-4814-82df-88588a0cdd41)

#### Análisis técnico

El ransomware genera una clave de cifrado simétrica utilizando CryptGenRandom(), que es el generador de números aleatorios implementado por Windows CriptoAPI.  
Los archivos están cifrados con Chacha 2008 que es una variante de Poly1305 y ChaCha20 desarrollada por Daniel J. Bernstein. 
Este algoritmo cifra bit a bit.


Al principio los archivos cifrados obtienen la extensión **.akira** además de que se crea una nota con el nombre **akira_readme.txt**. 
Pero Avast lanzó un descifrador debido a un fallo en el mecanismo de cifrado. 
Entonces Akira saco otra versión de su Ransomware y ahora los archivos obtenían la extensión **.powerranges** 

El Ransomware de Akira funciona tanto para Windows como para Linux, pero en vez de usar CryptoAPI usan la librería Crypto++. 
El descifrador de Akira para Windows también usa para Linux, solo que hay que usar Wine para que funcione. 


#### Herramientas de descifrado

En el siguiente [sitio web](https://www.nomoreransom.org/) de se encuentran muchas herramientas e información sobre diferentes Ransomware. 
Entre estos se encuentra el Ransomware de Akira del cual tenemos un descifrador y un manual sobre cómo funciona el Ransomware. 

![5 1](https://github.com/user-attachments/assets/d31bc282-93fb-4262-a17e-ed96ee6965b1)


#### Flujo de ataque

**Acceso inicial:**

- Obtienen acceso a los entornos de las víctimas utilizando credenciales válidas. Akira usa credenciales de VPN comprometidas para el acceso inicial.
- También se han observado atacando VPN de Cisco vulnerables explotando **CVE-2023-20269**.

**Persistencia:**

- Los actores crean una nueva cuenta de dominio en el sistema comprometido.

**Descubrimiento:**

- Utilizan herramientas como PCHunter y SharpHound, AdFind para recopilar información sobre el sistema.

**Movimiento lateral:**

- Los actores utilizan Windows RDP como herramienta para el movimiento lateral en la red de la víctima junto con el servicio web RClone, extrayendo información robada.

**Impacto:**

- El ransomware cifra los sistemas afectados mediante un algoritmo de cifrado híbrido que combina Chacha20 y RSA.

![image](https://github.com/user-attachments/assets/0adced95-a704-449a-b507-f947f907f8c7)


#### Páginas web

[Sitio principal](http://akiral2iz6a7qgd3ayp3l6yub7xx2uep76idk3u2kollpj5z3z636bad.onion/)
[Página de contacto](https://akiralkzxzq2dsrzsrvbr2xgbbu2wgsmxryd4csgfameg52n7efvr2id.onion/)

---

### Prueba de ataque

Para simular el ataque he obtenido una muestra del sitio web [Bazar Abuse](https://bazaar.abuse.ch/) y la he instalado en una máquina virtual con Windows 10. 
Por supuesto esta máquina esta totalmente aislada del equipo anfitrión. 
Lo ejecuto y después de unos segundos, puedo visualizar el archivo **Akira_readme.txt** junto con un log.

![image](https://github.com/user-attachments/assets/313bdb3b-23a5-4d32-a27c-99bfd8a7a734)

Contenido de Akira_readme.txt

![image](https://github.com/user-attachments/assets/db2c7188-7fb8-492b-9151-898f42844e88)

Y se puede observar la información más relevante que son los sitios TOR y el código del chat de Akira. 

![image](https://github.com/user-attachments/assets/390040b0-13c7-4d9d-b333-bc2b81212525)

Al ser esto una demostración, la URL de la página de contacto, no se muestra, pero si la del sitio oficial. 
Con el comando **dir  C:\*.akira /S** puedo ver todos los archivos que ha cifrado este Ransomware: 

```bash
dir  C:\*.akira /S
```

![image](https://github.com/user-attachments/assets/7a0dd770-81ee-4f57-9dc8-de05235392cf)

---

### Usar herramientas de descifrado 

Para descifrar estos archivos voy a usar el software que desarrollo Avast. 
Al ejecutarlo lo primero que nos dice es que se creo una nueva variante del ransomware de Akira y que este software no funciona contra esa variante. 
Aun así voy a comprobar si funciona o no.

![image](https://github.com/user-attachments/assets/a93c1385-9fd8-415d-aa69-01ab4b693efa)

Lo primero que pide es elegir los directorios a descifrar, yo elijo que descifre desde la raíz.

![image](https://github.com/user-attachments/assets/494410ce-fe8b-4ca4-97a1-699a609144f5)

Ahora pide que pase 2 archivos, uno sin descifrar y otro cifrado (ha de ser el mismo archivo) para compararlos. 

![image](https://github.com/user-attachments/assets/71997052-5404-4e3e-89c7-a10dcdfc664b)

Le digo que haga un backup de los archivos cifrados y que se ejecute con permisos de administrador. 

![image](https://github.com/user-attachments/assets/08e86d85-2fda-45a2-97e9-9b81ff6b75d1)

En mi caso, no me ha funcionado muy bien y de 2467 archivos cifrados he pasado a 2096. Si que ha descifrado unos pocos, pero no nos sirve si no descifra todos.

![image](https://github.com/user-attachments/assets/b7b238a2-38d0-4e34-a570-8cca39dd8d2f)

Como ya nos dijo la empresa, no cuentan con ninguna copia de seguridad de la información y el software de recuperación no ha funcionado como debería. 

Otra opción sería ponerse en contacto con el equipo de Avast a través del siguiente email - decryptors@avast.com  y explicarles la situación.
Además de que se debe llamar al Incibe-Cert, al Grupo de Delitos Telemáticos de la Guardia Civil,  la Unidad de Ciberdelincuencia de la policía nacional y (si procede) a la Agencia Española de Protección de Datos. 
















