<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Instalación y preparación](#instalación)
 - [Metaspoitable](#realizar-escaneo)
   - [Análisis de la información](#análisis-de-la-información)
   - [Explotaciones posibles](explotaciones-posibles)
 - [DVWA](dvwa)
   - [Análisis de la información](#análisis-de-la-información)
   - [Explotaciones posibles](explotaciones-posibles)

</details>

---

## Introducción

RapidScan es una herramienta de escaneo automatizado para aplicaciones web, que integra más de 80 herramientas de seguridad como:

- Nmap
- wafw00f
- nikto
- theHarvester
- whatweb
- dnsrecon

Su objetivo es realizar **reconocimiento y detección de vulnerabilidades** en sitios web de forma rápida.

- Automatiza el escaneo usando múltiples herramientas en una sola ejecución.
- Detecta puertos abiertos, cabeceras HTTP, WAFs, CMS, tecnologías web, servicios, subdominios, y vulnerabilidades conocidas
- Genera informes en pantalla y en archivos (rs.dbg.<IP>.<fecha>).

---

### Instalación y preparación

Su instalación es muy sencilla, tan solo hemos de clonar el repositorio de github en nuestra máquina: 

```bash
git clone https://github.com/skavngr/rapidscan.git 
cd rapidscan
```

![1 1](https://github.com/user-attachments/assets/5d078531-72b0-416f-b395-96650b9041fc)

Y darle permisos de ejecución al script de **rapidscan.py**

```bash
chmod +x rapidscan.py 
```

![1 2](https://github.com/user-attachments/assets/8ca7b207-3ae8-4649-b0f2-b04809238213)

Si lo ejecuto directamente asi, me saldrá una pantalla con información sobre la herramienta:

![1 3](https://github.com/user-attachments/assets/ac9a907a-382f-4d05-8471-4cc3a77271ce)

---

### Metaspoitable

En la pantalla se nos dan ejemplos de como usar el script, de que podemos parar los escaneos haciendo Ctrl+C, la cantidad de tiempo que dura cada escaneo y el tipo de vulnerabilidades que se pueden obtener y que significa cada una.


En este caso, voy a lanzar la herramienta contra una máquina con metaspoitable y otra con DVWA. 
Primero la metaspoitable: 

![2 1](https://github.com/user-attachments/assets/aa539a0c-0154-4d45-8dcc-8ca5f8cdd604)

Al lanzarla se van realizando diferentes escaneos, que tardaran mas o menos tiempo, en los cuales se nos da información sobre el resultado del escaneo, si se ha completado, si no, si ha sacado alguna vulnerabilidad etc: 

![2 3](https://github.com/user-attachments/assets/03b87ba3-c7c6-45dc-a603-bd6c7999cb20)


#### Análisis de la información

Paso el archivo que se ha generado a txt y al revisarlo se distinguen las siguientes vulnerabilidades: 

**Cabeceras de Seguridad HTTP Ausentes**

- X-Frame-Options no presente
  - Permite ataques de Clickjacking
- X-Content-Type-Options no presente
  - Puede permitir que el navegador interprete tipos MIME incorrectamente (MIME-sniffing).
- X-XSS-Protection aparentemente ausente
  - Podría permitir ejecución de scripts maliciosos si hay una vulnerabilidad XSS.
 
**Servidor y Tecnología Obsoleta (Nikto)**

- Apache 2.2.8 + PHP 5.2.4 (Ubuntu)
  - Ambas versiones están fuera de soporte, conocidas por múltiples vulnerabilidades (RCE, LFI, etc.).
 
**HTTP TRACE se encuentra habilitado**

- Lo cual habilita ataques de tipo Cross-Site Tracing (XST).

**Vulnerabilidad a Slowloris (Nmap + NSE)**

- El servidor es vulnerable a un ataque DoS tipo Slowloris, al mantener muchas conexiones abiertas sin cerrarlas.
  - Se confirma la vulnerabilidad ya que se lanzó un ataque exitoso con 1001 conexiones durante 2min 22s.
 
**Puertos y Servicios Abiertos (Nmap Full TCP)**

- El host tiene numerosos servicios abiertos, algunos peligrosos si no están protegidos:
  - **FTP (21)** - sin información de seguridad adicional, podría permitir acceso anónimo.
  - **Telnet (23)** – servicio inseguro (sin cifrado).
  - **SMTP (25)** – podría ser explotado para spam o spoofing si mal configurado.
  - **MySQL (3306), PostgreSQL (5432)** – verificar si requieren autenticación fuerte.
  - **VNC (5900), X11 (6000)** – potencial para acceso remoto o captura de sesión.
  - **AJP (8009)** – Apache JServ Protocol, relacionado con vulnerabilidad Ghostcat (CVE-2020-1938).
 
**Servicios SMB Abiertos (Nmap SMB y STUXNET)**

- Puertos 139 y 445 abiertos – asociados a servicios NetBIOS y SMB, usados por exploits como:
  - EternalBlue (MS17-010)
  - STUXNET (aunque no se confirmó infección, el servicio está activo)
- Evaluar si está parchado, ya que SMB es muy vulnerable en versiones antiguas de Windows o Samba.

#### Explotaciones posibles

- **XSS Testing **
  - Por falta de cabeceras + posible PHP antiguo sin filtrado.
- **Ataques de Clickjacking.**
- **XST (Cross Site Tracing)**
  - Para robar cookies.
- **Explotación por PHP obsoleto:**
  - RCE (Remote Code Execution) en PHP < 5.4
- **Ataque DoS tipo Slowlori**
  - Ya confirmado
- **Ataques SMB**
  - EternalBlue, SMBGhost, etc
- **Fuzzing/Explotación en AJP (8009)**
  - Por Ghostcat
- **Fuerza bruta o login remoto en:**
  - FTP, SSH, Telnet, PostgreSQL, MySQL, VNC.
- **Exploración de servicios RPC/NFS abiertos**
- **Backdoor en puertos no estándar**
  - 1524 - ingreslock
  - 53650
 
---

### DVWA

```bash
python3 rapisdcan.py 192.168.1.143
```

![image](https://github.com/user-attachments/assets/7d7e22de-6d6d-4abc-8a6a-68336e80b070)

Al finalizar el escaneo, sale un pequeño resumen de este: 

![3 1](https://github.com/user-attachments/assets/f0028dc8-fb17-40c0-8f0b-d40b2a38107c)

Además de que se han generado varios archivos: 

![image](https://github.com/user-attachments/assets/66247a6a-7e73-4594-a61b-c9784c3e19ee)

El archivo **rs.vul.192.168.1.136.2025-04-16** es el importante y donde se ven todas las herramientas que se han probado y un resumen del escáner: 

![image](https://github.com/user-attachments/assets/1ddc0a8f-6d29-4224-9fc2-2f4c940b8cdf)

#### Análisis de la información

Básicamente este archivo nos dice: 

**Servidor Web Apache en puerto 80**

- **Versión** - Apache/2.4.25 (Debian)
- **Estado** - Obsoleta → la versión actual recomendada es 2.4.54 o superior.
- **Posibles riesgos:**
  -  Vulnerabilidades conocidas en Apache 2.4.25 (CVE-2017-3167, CVE-2017-3169)
  -  Ausencia de cabeceras HTTP de seguridad:
    -  X-Frame-Options: Vulnerabilidad a clickjacking.
    -  X-Content-Type-Options: Posibilidad de MIME-sniffing.

**Redirección a login.php**

- Indica que hay un sistema de autenticación que podría ser susceptible a:
  - Ataques de fuerza bruta
  - Inyecciones SQL
  - Robo de cookies (si no hay HTTPS)
 
**No se encontraron subdominios ni balanceadores de carga**

- Las herramientas amass, fierce, lbd, y dmitry no obtuvieron más información útil.
- No hay carga distribuida indicando que es una única máquina objetivo.

**Puertos cerrados relevantes**

- 445/tcp (SMB):
  - Cerrado por lo que no hay posibilidad de un ataque directo
- 443/tcp (HTTPS):
  - Cerrado, no hay cifrado ni tráfico seguro activo
 
#### Explotaciones posibles

**Ataques web dirigidos a Apache/login.php**

- **Buscar exploits conocidos para Apache 2.4.25**
  - Usar searchsploit apache 2.4.25 en Kali.
  - Escanear con **Nessus** o **OpenVAS** para más profundidad.
- **Prueba de fuerza bruta en login.php**
  - Usar herramientas como hydra, Burp Suite, wfuzz
- **Test de inyección SQL / XSS / LFI en formularios**
  - Explorar con sqlmap, nikto, zap, burp.
 
**Evaluar el mal uso de cabeceras HTTP **

- Clickjacking:
  - Se puede crear un iframe que apunte al login y verifica si puedes superponerlo.
- MIME-sniffing
  - Subir archivos con extensiones “.jpg” pero contenido ejecutable (en caso de poder subir archivos).
 
**Enumeración y fingerprinting adicional**

- Usar whatweb o wappalyzer para descubrir más tecnologías en uso.
- Repetir escaneo con nmap -sV -A para obtener versiones detalladas de servicios. 












