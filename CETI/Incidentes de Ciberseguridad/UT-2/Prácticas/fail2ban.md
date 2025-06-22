<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Instalación](#instalación)
 - [Configuración](#configuración)
 - [Comprobar funcionamiento](#comprobar-funcionamiento)
 - [DDOS](#ddos)
</details>

---

## Introducción

En esta actividad se va a investigar instalar y comprobar el funcionamiento del software **fail2ban** la cual es una herramienta de seguridad que ayuda a proteger servidores y sistemas contra ataques de fuerza bruta, conexiones no deseadas, ataques DDOS etc.

Monitorea los archivos de registro (logs) en busca de patrones de comportamiento sospechoso, como múltiples intentos fallidos de inicio de sesión. 


Cuando detecta un comportamiento sospechoso, Fail2ban puede bloquear la dirección IP del atacante durante un período de tiempo definido, evitando así que continúe con sus intentos. 

Se utiliza principalmente en servidores Linux para proteger servicios expuestos a internet, como servidores web y SSH. 

---

### Instalación

```bash
apt install fail2ban -y
```

![1 1](https://github.com/user-attachments/assets/933cb6aa-6683-4277-a06d-dcefd945918d)

Al instalarlo, inicio el servicio y compruebo su estado:

```bash
systemctl start fail2ban
systemctl status fail2ban
```

![1 2](https://github.com/user-attachments/assets/4d34aa07-3f74-4290-8a7c-259881636b24)

---

### Configuración

Fail2ban se configura mediante **“jails”** las cuales son configuraciones específicas que definen como se debe de monitorizar y proteger un servicio / aplicación en particular. 


Cada una de estas **“jail”** incluye reglas y parámetros que determinan que tipo de actividad se considera sospechosa  y que acciones se han de tomar al detectar dichas actividades. 

En mi caso, voy a configurarlo para que al registrar más de 5 conexiones fallidas al **servidor ssh** banee la IP desde la cual se están realizando esas conexiones durante 10 minutos. 

El archivo de configuración de fail2ban es **/etc/fail2ban/jail.conf** así que lo edito. 

Primero edito las configuraciones por defecto, las cuales se aplican para todos los servicios (siempre y cuando los servicios no tengan una específica para ellos). 

![image](https://github.com/user-attachments/assets/3dc54961-67d7-4be6-ad6c-52982315fe9f)

**Ignoreip**

- Son las IP que fail2ban no ha de tener en cuenta.
- En este caso, solo la IP del propio equipo

**bantime**

- Tiempo que va a estar baneada una IP  

**findtime**

- Un equipo estará baneado si ha generado un maxretry durante los últimos 10 minutos

**Maxretry**

- Nº de intentos que tiene un equipo antes de ser baneado

Como lo que quiero es limitar las conexiones a ssh lo que voy a hacer es configurar el jail de este servicio. 
Por defecto se encuentra de la siguiente forma:

![image](https://github.com/user-attachments/assets/85d7d21a-6c2d-4b9e-b01b-693a1a6d8a7f)

Pero yo le añado las siguientes reglas: 

![image](https://github.com/user-attachments/assets/0031baf0-3fb4-406c-81fa-16c4e9217f91)

Con **enable** habilito el uso de esta jail, debido a que, por defecto, todas las jail se encuentran deshabilitadas.

Y configuro los parámetros maxretry, bantime y findtime para que a los 5 intentos, la máquina se banee durante 1 hora.

Para aplicar estos cambios reinicio el servicio y compruebo su estado. 

```bash
sudo systemctl restart fail2ban
```

![1 6](https://github.com/user-attachments/assets/30123ef4-be6f-47e6-abcb-b5ab12cf7274)

---

### Comprobar funcionamiento

Desde otra máquina Kali Linux realizo varias conexiones fallidas al servidor ssh objetivo hasta que tras 5 conexiones, ya no me deja hacer otra conexión

![2 1](https://github.com/user-attachments/assets/db2f75ed-ecb2-4469-84a3-24b4e7bd788e)

Con el comando - **sudo fail2ban-client status sshd** - se observa el estado de la jail de ssh pudiendo ver que se han realizado 5 conexiones fallidas y se ha baneado 1 IP, la 10.0.2.4. 

```bash
sudo fail2ban-client status sshd
```

![2 2](https://github.com/user-attachments/assets/97a0fd68-50eb-4659-b1cf-7589dff8763c)

Para desbanear la IP, se usa el comando:

```bash
fail2ban-client unban 10.0.2.4.
```

![2 3](https://github.com/user-attachments/assets/dfd3fef2-3db5-43e0-b816-3a41a93f986a)

Ahora podré volver a intentar conectarme al equipo. 

![image](https://github.com/user-attachments/assets/b103a004-b537-480d-ac9c-7c587ab73cdf)

Para ver el log de fail2ban se debe comprobar el archivo **/var/log/fail2ban.log**


```bash
tail /var/log/fail2ban.log
```

![2 4](https://github.com/user-attachments/assets/e0320f3b-642a-42c9-be32-7325779d3163)

---

### DDOS

Para evitar ataques DDOS con fail2ban se puede configurar con la directiva action. 

Esta directiva especifica la acción que se debe tomar cuando se detecta un intento de ataque. 

En  mi caso la configuro de la siguiente manera

![image](https://github.com/user-attachments/assets/b38379e0-a1b8-48c3-a4de-3d6dcd6c59dc)

**action = iptables[name=SSH, port=ssh, protocol=tcp] **

Así, cuando se detecta una actividad sospechosa no solo se banea la IP por un tiempo (ahora lo he puesto para que la IP se banee por 1 mes a los 3 intentos fallidos). 

Si realizo muchas conexiones al puerto 22, fail2ban acabará bloqueando la IP y ya no podrá hacer conexiones a ese puerto y se habrá creado la regla en iptables. 

![image](https://github.com/user-attachments/assets/276961bd-19fb-4e28-bf57-1c9a90fa7c0e)

IP baneada

![image](https://github.com/user-attachments/assets/a7b8f6e1-e547-4010-a974-7df397db1371)

Conexiones a SSH bloqueadas, pero no al equipo.

![3 2](https://github.com/user-attachments/assets/a5afba21-5666-4d06-969b-8d438b3aadfa)













