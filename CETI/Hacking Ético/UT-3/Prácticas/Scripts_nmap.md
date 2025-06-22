<details>
  <summary><h2>Índice</h2></summary>

- [Introducción](#introducción)
- [Scripts](#scripts)

</details>

## Introducción

En esta práctica se van a ver diferentes scripts para usar a la hora de realizar escaneos con **nmap**. Con estos scripts no hace falta poner tantas opciones (-sV -Pn) aunque también se pueden poner junto con el script.

En otras prácticas ya se ha usado algún script de nmap, pero en esta práctica se verán unos pocos más:

---

### Scripts

Los scripts de nmap se almacenan en el directorio **/usr/share/nmap/scripts.**

![1 1 1](https://github.com/user-attachments/assets/62349e7b-2aa1-489e-a925-4e04f09d84d6)


El primer script que pruebo es **http-waf-fingerprint.nse** el cual intenta detectar la presencial de un WAF, así como su tipo y versión. Un WAF es un firewall pero de aplicaciones web. 
El equipo al cual realizo los escaneos es una máquina **opnsense**.

```bash
nmap -script=http-waf-fingerprint 10.0.2.12
```

![1 1](https://github.com/user-attachments/assets/f365b4a7-e86e-4375-83e9-05b7e9211dde)


La ejecución del script nos aporta información sobre los puertos y servicios abiertos de la máquina.

---

Otro script que he probado es el **http-title** el cual realiza una solicitud HTTP a un servidor web y extrae el contenido del título de la página HTML.

```bash
nmap -script=http-title 10.0.2.12
```

![1 2](https://github.com/user-attachments/assets/ef1754fc-aa4f-43ee-b2f7-fa0ce30ce8fd)


---
En el puerto **443** ha encontrado el título, el cual parece ser una página de **Login de OPNsense**.

El siguiente script es el **ssl-cert** el cual obtiene el **certificado SSL/TLS** que está utilizando.

Se nos indica:

- La entidad que ha emitido el certificado
- Cifrado usado
- Fechas de validez
- Huella digital

```bash
nmap --script=ssl-cert 10.0.2.12
```

![1 3](https://github.com/user-attachments/assets/82cadadf-e610-4bed-bcc1-56acb588e58e)


---

El script **ssl-enum-ciphers** lista los cifrados SSL/TLS admitidos y detecta configuraciones débiles.

```bash
nmap --script sll-enum-ciphers -p 443 10.0.2.12
```

![1 5](https://github.com/user-attachments/assets/fc6b325a-c2ae-475b-81e3-03c5a258d92b)


---

El script **banner** se utiliza para obtener el **banner** de un servicio que se está ejecutando en un puerto específico. 
Un **banner** es un texto o mensaje que los servicios suelen enviar al cliente cuando se establece una conexión, y normalmente incluye información sobre el servicio, su versión y, en algunos casos, detalles del software o el sistema operativo

```bash
nmap --script=banner 10.0.2.12
```

![1 4](https://github.com/user-attachments/assets/ad39265d-6b1e-475f-bb8f-ec01d3417bdb)


